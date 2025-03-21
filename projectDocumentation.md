# Project Documentation: User Scheduler App

## Overview
The **User Scheduler App** is a Laravel-based application designed to fetch random user data from an external API, store it in a database, and provide features to filter and retrieve user information. The application adheres to Laravel's coding standards and best practices to ensure maintainability, scalability, and readability.

---

## Features

### 1. **Fetch Random Users**
- **Functionality**: Fetches random user data from the `https://randomuser.me/api/` API.
- **Implementation**:
  - The `fetchRandomUsers` function in the `RandomUserController` fetches 5 random users in each call.
  - The data is decoded from JSON and returned as an array.

---

### 2. **Store User Data**
- **Functionality**: Stores user data, including personal details and location, into the database.
- **Implementation**:
  - The `addRandomUsersToDatabase` function processes the fetched data and stores it in three tables:
    - `users`: Stores basic user information like name, email, and password.
    - `users_details`: Stores additional user details like gender, phone, and date of birth.
    - `locations`: Stores user location details like city, state, country, and coordinates.

---

### 3. **Filter and Retrieve User Data**
- **Functionality**: Allows filtering user data by gender, city, and country, with the ability to specify the number of records and fields to return.
- **Implementation**:
  - The `getFilteredUsers` function processes POST requests to filter and retrieve user data.
  - Joins the `users`, `users_details`, and `locations` tables to fetch related data.
  - Supports dynamic field selection and limits the number of records returned.

---

### 4. **Task Scheduling**
- **Functionality**: Automatically fetches and stores random user data every 5 minutes.
- **Implementation**:
  - A custom Artisan command (`AddRandomUsers`) is created to call the `addRandomUsersToDatabase` function.
  - The command is scheduled in the `Kernel.php` file to run every 5 minutes.

---

## Coding Standards and Best Practices

### 1. **PSR-12 Coding Standard**
- The project follows the PSR-12 coding standard for PHP, ensuring consistent formatting and readability.

### 2. **Separation of Concerns**
- Controllers handle HTTP requests and responses.
- Models handle database interactions.
- Commands handle scheduled tasks.

### 3. **Mass Assignment Protection**
- Models define the `$fillable` property to allow only specific fields to be mass-assigned.

### 4. **Error Handling**
- Try-catch blocks are used to handle exceptions during database operations.
- Errors are logged using Laravel's logging system (`\Log::error`).

### 5. **Dynamic Query Building**
- Queries are dynamically built based on request parameters, ensuring flexibility and reusability.

### 6. **Environment Configuration**
- Sensitive data like database credentials and API keys are stored in the `.env` file.

---

## Conclusion
The **User Scheduler App** is a robust and scalable application that demonstrates best practices in Laravel development. It provides features for fetching, storing, and filtering user data while adhering to coding standards and ensuring maintainability.
