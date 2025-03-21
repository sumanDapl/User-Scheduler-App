# API Documentation: Get Filtered Users

## Endpoint
`GET /filtered-users`

## Description
Retrieve filtered users based on the provided query parameters.

## Query Parameters
- `gender` (string, optional): Filter users by gender (e.g., "male", "female").
- `city` (string, optional): Filter users by city.
- `country` (string, optional): Filter users by country.
- `limit` (integer, optional): Limit the number of records returned (default: 10).
- `fields` (array, optional): Specify the fields to include in the response. Default: `['name', 'email', 'gender', 'city', 'country']`.

## Sample Request
```
GET /filtered-users?gender=male&city=New%20York&limit=5&fields[]=name&fields[]=email
```

## Sample Response
```json
[
    {
        "name": "John Doe",
        "email": "johndoe@example.com"
    },
    {
        "name": "Mike Smith",
        "email": "mikesmith@example.com"
    }
]
```

## Notes
- If no filters are provided, the endpoint will return all users (up to the specified limit).
- The `fields` parameter allows you to customize the fields included in the response. If omitted, the default fields will be returned.