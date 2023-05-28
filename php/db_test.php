<?php

// Database configuration
$host = 'localhost';
$dbname = 'your_database_name';
$username = 'your_username';
$password = 'your_password';

try {
    // Establish database connection
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);

    // Prepare and execute the SQL query
    $query = "SELECT * FROM employees";
    $stmt = $pdo->query($query);

    // Fetch all rows as an associative array
    $employees = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Display the list of employees
    foreach ($employees as $employee) {
        echo "ID: " . $employee['id'] . "<br>";
        echo "Name: " . $employee['name'] . "<br>";
        echo "Department ID: " . $employee['department_id'] . "<br><br>";
    }
} catch (PDOException $e) {
    echo "Database connection failed: " . $e->getMessage();
}


?>