<?php

//filter out unwanted characters from a string in PHP
function clean($string)
{
    return preg_replace('/[^A-Za-z0-9\-]/', '', $string);
}

function clean2($string)
{
    return str_replace('*', ' ', $string);
}


echo clean('a|"bc!@£de^&$f g'), '<br>';

echo clean2('xp*3p*4p*ll');

// check if a given string is a palindrome

function palindrome($string)
{
    if (strrev($string) == $string) {
        return 1;
    } else {
        return 0;
    }
}

$original = "71441";
echo "<br><br><br><br>";
if (palindrome($original)) {
    echo "It's a Palindrome";
} else {
    echo "Not a Palindrome";
}

// Count vows

function countVowels($string)
{
    $str = strtolower($string);

    // define an array of vowels
    $vowels = array('a', 'e', 'i', 'o', 'u');

    // Initialize counter
    $count = 0;

    //Iterate through each character in the string
    for ($i = 0; $i < strlen($str); $i++) {
        if (in_array($str[$i], $vowels)) {
            // Increment the count if it is a vowel
            $count++;
        }
    }

    return $count;
}

$string = "Hello World";

$vowelCount = countVowels($string);
echo "<br> The number of vowels in the '$string' is: $vowelCount <br><br>";


// Remove duplicates in an array

$array = array(1, 2, 3, 2, 4, 5, 3, 6, 4);
$uniqueArray = array_unique($array);

print_r($uniqueArray);

// Check if a number is prime function

function isPrime($number)
{
    if ($number < 2) {
        return false;
    }
    // Check for divibility by numbers up to the square root of the number
    for ($i = 2; $i <= sqrt($number); $i++) {
        if ($number % $i === 0) {
            return false;
        }
    }
    return true;
}
echo "<br><br><br><br>";
$number = 17;
if (isPrime($number)) {
    echo "$number is prime.";
} else {
    echo "$number is not a prime.";
}


// String Length
echo "<br><br>";
echo strlen("FOUR");
echo "<br><br>";
// Highest number in an array
echo (max(2, 8, 3, 1) . "<br>");

// Capitalize each first letter of a word

echo ucwords("<br> hello world! <br>");

// generates a password with a given length;

function generateRandomPassword($length)
{
    $characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_=+';
    $password = '';

    $charactersCount = strlen($characters);

    for ($i = 0; $i < $length; $i++) {
        $randomIndex = rand(0, $charactersCount - 1);
        $password .= $characters[$randomIndex];
    }

    return $password;
}

$passwordLength = 5;
$randomPassword = generateRandomPassword($passwordLength);
echo "<br><br> Random password: $randomPassword <br><br>";

// Check if a given year is a leap year

function isLeapYear($year)
{
    // if year is divisible by 4
    if ($year % 4 === 0) {
        // if divisible by 100, it should be also divisible by 400 to be a leap year
        if ($year % 100 === 0) {
            return ($year % 400 === 0);
        }
        return true;
    }
    return false;
}

$year = 2023;
if (isLeapYear($year)) {
    echo "$year is a leap year. <br><br>";
} else {
    echo "$year is not a leap year. <br><br>";
}

// Sum array of numbers

echo array_sum(array(1, 2, 3, 4, 5, 6)), "<br><br>";

// a php function to remove the white space of the beginning and end of a string

function removeWhitespaces($string)
{
    return trim($string);
}

$string = "      Hello, World!       ";
$trimmedString = removeWhitespaces($string);
echo "Original string: '$string' <br>";
echo "Trimmed string: '$trimmedString' <br><br>";


// Sort array by asc order;
$numbers = array(4, 6, 2, 22, 11);
sort($numbers);
$newArray = array();
$arrlength = count($numbers);
for ($x = 0; $x < $arrlength; $x++) {
    array_push($newArray, $numbers[$x]);
}

print_r($newArray);
echo "<br><br>";

//reverse the order of words in a sentence.

echo strrev("Worlds in an sentence");


// check if a given string contains a specific substring in PHP
echo "<br><br>";
function containsSubString($string, $substring)
{
    // check if the substring is present in the string
    if (strpos($string, $substring) !== false) {
        return true;
    }
    return false;
}

$string = "Hello, World!";
$substring = "World";

if (containsSubstring($string, $substring)) {
    echo "The string '$string' contains the substring '$substring'.";
} else {
    echo "The string '$string' does not contain the substring '$substring'.";
}

echo "<br><br>";


// Calculate factorial of a number

function factorial($number)
{
    // Base case: factorial of 0 is 1
    if ($number === 0) {
        return 1;
    }

    // Recursive case: multipliy the number by factorial of (number -1);
    return $number * factorial($number - 1);
}

$number = 6;
$factorial = factorial($number);

echo "The Factorial of $number is $factorial. <br><br>";


// Vefify if a variable if empty
$variable = "";

if (empty($variable)) {
    echo "Variable is empty. <br><br>";
} else {
    echo "Variable is not empty. <br><br>";
}


// find the second smallest number in an array

function findSecondSmallest($array)
{
    $smallest = PHP_INT_MAX;
    $secondSmallest = PHP_INT_MAX;

    // Iterate through each element in the array
    foreach ($array as $num) {
        // If the current element is smaller than the smallest, update both smallest and second smallest
        if ($num < $smallest) {
            $secondSmallest = $smallest;
            $smallest = $num;
        } elseif ($num < $secondSmallest && $num != $smallest) {
            // If the current element is smaller than the second smallest (but not equal to smallest), update the second smallest
            $secondSmallest = $num;
        }
    }

    // Return the second smallest number
    return $secondSmallest;
}

$array = [5, 2, 8, 1, 3, 7];
$secondSmallest = findSecondSmallest($array);
echo "The second smallest number is: $secondSmallest";

?>