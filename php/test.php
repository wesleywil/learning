<?php

// Example in how to include a FILE in PHP
include 'header.php';

// Declaring a variable
$text = "Hello World";


echo $text;

// Difference between single quote('') and double quote("")

$name = "John";

echo '<br>Hello $name!'; //Return Hello $name!

echo "<br>Hello $name!"; //Return Hello John!


// GET superglobal variable
//URL http://localhost:8000/?name=John&age=25

$name = $_GET['name'];
$age = $_GET['age'];

echo "<br> Hello, $name! you are age $age years old.";

// POST superglobal variable
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];
}

// SESSION superglobal variable
session_start();

// set session data
$_SESSION['user_id'] = 123;
$_SESSION['username'] = 'john_doe';

// Acess session data
$user_id = $_SESSION['user_id'];
$username = $_SESSION['username'];

echo "<br> user_id $user_id + username: $username";

// // Unset session data
unset($_SESSION['username']);

// Destroy the session
session_destroy();

// COOKIE superglobal variable

//set cookie
//setcookie('cookie_name', 'cookie_value', time() + 3000);

// Delete a cookie
setcookie('cookie_name', '', time() - 3600);


// Example in how to sanitize user inputs

$userInput = $_POST['input_field'];

//Sanitize user input
$sanitizedInput = filter_var($userInput, FILTER_SANITIZE_STRING);

// use the sanitized input
// echo "Sanitized input: " . $sanitizedInput;

?>