<?php

namespace App\Http\Controllers;

use App\Models\User; // Import the User model
use App\Models\UserDetails; // Import the UserDetails model
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;

class RandomUserController extends Controller
{
    // Inherits fetchRandomUsers from the abstract Controller

    /**
     * Call the Random User API 5 times and return the responses.
     *
     * @return array
     */
    public function fetchRandomUsers()
    {
        $responses = [];
        $url = 'https://randomuser.me/api/';

        for ($i = 0; $i < 5; $i++) {
            $response = file_get_contents($url);
            if ($response !== false) {
                $responses[] = json_decode($response, true);
            } else {
                $responses[] = ['error' => 'Failed to fetch data'];
            }
        }
        return $responses;
    }

    /**
     * Fetch random users and add them to the Users table.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function addRandomUsersToDatabase()
    {
        $randomUsers = $this->fetchRandomUsers();

        foreach ($randomUsers as $userData) {
            if (isset($userData['results'][0])) {
                $user = $userData['results'][0];

                // Insert user into the users table
                $createdUser = User::create([
                    'name' => $user['name']['first'] . ' ' . $user['name']['last'],
                    'email' => $user['email'],
                    'password' => Hash::make('password'), // Default password
                ]);

                // Insert user details into the users_details table
                try {
                    UserDetails::create([
                        'user_id' => $createdUser->id,
                        'gender' => $user['gender'],
                        'phone' => $user['phone'],
                        'dob' => isset($user['dob']['date']) ? date('Y-m-d', strtotime($user['dob']['date'])) : null,
                    ]);
                } catch (\Exception $e) {
                    \Log::error('Error inserting user details: ' . $e->getMessage());
                }

                // Insert location details into the locations table
                try {
                    if (isset($user['location'])) {
                        \App\Models\Location::create([
                            'user_id' => $createdUser->id,
                            'street_number' => $user['location']['street']['number'] ?? null,
                            'street_name' => $user['location']['street']['name'] ?? null,
                            'city' => $user['location']['city'] ?? null,
                            'state' => $user['location']['state'] ?? null,
                            'country' => $user['location']['country'] ?? null,
                            'postal_code' => $user['location']['postcode'] ?? null,
                            'latitude' => $user['location']['coordinates']['latitude'] ?? null,
                            'longitude' => $user['location']['coordinates']['longitude'] ?? null,
                        ]);
                    }
                } catch (\Exception $e) {
                    \Log::error('Error inserting location details: ' . $e->getMessage());
                }
            }
        }

        return response()->json(['message' => 'Random users, their details, and locations added to the database successfully.']);
    }

    public function getFilteredUsers(Request $request)
    {
        
        // Retrieve filter parameters from the request
        $gender = $request->input('gender');
        $city = $request->input('city');
        $country = $request->input('country');
        $limit = $request->input('limit', 10); // Default to 10 records if not specified
        $fields = $request->input('fields', ['name', 'email', 'gender', 'city', 'country']); // Default fields

        // Build the query
        $query = User::query()
            ->join('users_details', 'users.id', '=', 'users_details.user_id')
            ->join('locations', 'users.id', '=', 'locations.user_id');

        if ($gender) {
            $query->where('users_details.gender', $gender);
        }

        if ($city) {
            $query->where('locations.city', $city);
        }

        if ($country) {
            $query->where('locations.country', $country);
        }

        // Select only the specified fields
        $query->select(array_map(function ($field) {
            return match ($field) {
                'name' => 'users.name',
                'email' => 'users.email',
                'gender' => 'users_details.gender',
                'city' => 'locations.city',
                'country' => 'locations.country',
                default => $field,
            };
        }, $fields));

        // Limit the number of records
        $users = $query->limit($limit)->get();
        
        return response()->json($users);
    }
}