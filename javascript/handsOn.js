// Determine the length of a string JS

const string = "This have 19 length";

console.log('LENGTH=> ', string.length);

// Convert a string to lowercase or uppercase in JS

const string2 = "convert this to uppercase or lowercase"

const uppercase = string2.toUpperCase();
const lowercase = string2.toLowerCase();

console.log('UPPERCASE: ', uppercase);

console.log('LOWERCASE: ', lowercase);

// Reverse string JS

const string3 = "reverse this string";

function reverseString(str){
    // direct method str.split().reverse().join();
    //split
    const splitString = str.split("");
    // reverse array
    const reverseArray = splitString.reverse();
    // Join the array
    const joinArray = reverseArray.join("");

    return joinArray;
}

console.log('REVERSED STRING: ', reverseString(string3));

// Check if a string contains a specific substring:

const string4 = "Hello World!";
const substring = "World";

if(string4.includes(substring)){
    console.log('Substring Found!');
}else{
    console.log('Substring not found.');
}

// function to count the occurrences of a character in a string

function countOccurences(str, char){
    let count = 0;

    for(let i = 0; i < str.length; i++){
        if(str.charAt(i) === char){
            count++;
        }
    }

    return count;
}

const string5 = "Hello, World!";
const char = "o";

const occurrences = countOccurences(string5, char);

console.log(`Number of occurrences of '${char}' in '${string5}': ${occurrences}`);

// remove whitespace from the beginning and end of a string in Javascript

const string6 = "  Hello, world!  ";

const trimmedStr = string6.trim();

console.log('Not Trimmed String: ', string6)
console.log('Trimmed String: ', trimmedStr);

// Capitalized first word of string;

const string7 = "hello world!";

const firstLetter = string7.charAt(0);
const firstLetterCap = firstLetter.toUpperCase();
const remainingLetters = string7.slice(1);
const capitalizedWord = firstLetterCap+remainingLetters;
console.log('Not capitalized string: ', string7, ' Capitalized String: ', capitalizedWord);

// Concatenate two or more string in Javascript?
const str1 = 'Hello';
const str2 = 'World';
const str3 = "!";

const string8 = str1.concat(" ", str2,str3);

console.log('Concatenated String: ', string8);

// Function to check if a string is a palindrome

function isPalindrome(str){
    const cleanStr = str.toLowerCase().replace(/[^a-z0-9]/g, '');

    // check if the cleaned string is a palindrome
    for(let i = 0; i< cleanStr.length / 2; i++){
        if(cleanStr[i] !== cleanStr[cleanStr.length - 1 - i]){
            return false;
        }
    }
    return true;
}

const xstr1 = "racecar";
const xstr2 = "Hello, world!";
const xstr3 = "A man, a plan, a canal, Panama!";

console.log(isPalindrome(xstr1));  // true
console.log(isPalindrome(xstr2));  // false
console.log(isPalindrome(xstr3));  // true

// Replace specific substring with another substring in a string in Js

const string9 =  "Hello, world!";
const oldSubstring = "world";
const newSubstring = "Universe";

const modifiedStr = string9.replace(oldSubstring, newSubstring);

console.log('String: ', string9, " Modified String: ", modifiedStr);

// function to truncate a string if it exceeds a certain length, adding an ellipsis at the end if necessary.

function truncadeString(str, maxLength){
    if(str.length <= maxLength){
        return str;
    }else{
        return str.substring(0, maxLength - 3)+"...";
    }
}

const string11 = "very long long and long, long string";
const maxLength = 12;

const truncadedString = truncadeString(string11, maxLength);

console.log('Truncaded String: ', truncadedString);


// split a string into an array of substrings based on a delimiter? 

function splitString(str, delimeter){
    return str.split(delimeter)
}

const string12 = "Hello, world! How are you?";
const delimeter = " ";

const substrings = splitString(string12, delimeter);
console.log('substring => ', substrings);

//Write a function to check if two strings are anagrams (contain the same characters in a different order).
function areAnagrams(str1, str2){
    const cleanStr1 = str1.toLowerCase().replace(/[^a-z0-9]/g, '');
    const cleanStr2 = str2.toLowerCase().replace(/[^a-z0-9]/g, '');

    // Sort the characters in both strings
    const sortedString1 = cleanStr1.split('').sort().join('');
    const sortedString2 = cleanStr2.split('').sort().join('');

    //Compare the sorted strings
    return sortedString1 === sortedString2;
}

const stringX = "listen";
const stringY = "silent";

console.log('The Word: ', stringX, ' and ', stringY, ' are anagrams? ', areAnagrams(stringX, stringY));

//  extract a portion of a string (substring) in JavaScript?

const string13 = "Hello, World! 323232";
const startIndex = 7;
const endIndex = 12;

const substring4 = string13.substring(startIndex, endIndex);

console.log('Extracting a portion of a string: ', string13, ' extracted part is: ', substring4);

// function to remove all occurrences of a specific character from a string.
const string14 = "Hello World! Nice one";

const removeOccurrences = string14.replaceAll("o", "");

console.log('Will be removed from this string: ', string14, ' the letter "o" final word', removeOccurrences)


//convert a string into an array of characters in JavaScript

const string15 = "Hello, World!";

const convertToArray = string15.split("");

console.log('ARRAY=> ', convertToArray);

// function to count the number of words in a string

function countWords(str){
    const trimmedStr = str.trim();

    // Split the trimmed string into an array of words
    //the regular expression /\s+/ is used as the delimiter, which matches one or more whitespace characters (including spaces, tabs, and newlines).
    const wordsArray = trimmedStr.split(/\s+/);

    // Return the length of the array
    return wordsArray.length;
}

const string16 = " Hello,    World!    How are you?  ";
const wordCount = countWords(string16);

console.log('Phrase: ', string16, 'words in the phrase: ', wordCount);


//  convert a string to a number

const string17 = "4";
const toNumber = Number(string17);

console.log('Converted ', string17, ' to a number: ', toNumber);

// function to find the index of the first occurrence of a character or substring in a string.

function findFirstOccurence(str, searchValue){
    return str.indexOf(searchValue);
}

const string18 = "Hello, world!";
const searchValue = "o";

const firstIndex = findFirstOccurence(string18, searchValue);

console.log('The index of the first "o" is: ', firstIndex);


//repeat a string a certain number of times 
const string19 = "Hello, World!";
const repeatNumber = 8;

for (let index = 1; index < repeatNumber+1; index++) {
    console.log('repeting this string: ', string19, 'number of times: ', repeatNumber, ' ', index, 'of ', repeatNumber);
    
}

























