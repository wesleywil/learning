<?php

// Class and Object

class Car
{
    public $brand;
    public $color;

    public function startEngine()
    {
        echo "Engine Started! <br>";
    }
}

// Create an object of the car Class
$mycar = new Car();

// Set object properties
$mycar->brand = "Toyota";
$mycar->color = "Red";

// Call object method

$brand = $mycar->brand;
$color = $mycar->color;

echo "<br>Car Brand = $brand With Color = $color <br>";
$mycar->startEngine();

//Encapsulation

class Person
{
    private $name;

    public function setName($name)
    {
        $this->name = $name;
    }

    public function getName()
    {
        return $this->name;
    }
}

$person = new Person();

$person->setName("John Doe");
$person_name = $person->getName();
echo "<br> $person_name<br><br>";


// Inheritance

class Animal2
{
    public $name;

    public function eat()
    {
        echo 'Eating...';
    }
}

class Dog2 extends Animal2
{
    public function bark()
    {
        echo "Woof";
    }
}


$dog = new Dog2();
$dog->name = "Max";
$dog->eat();
$dog->bark();

echo "<br>";

//Polymorphism

class Shape
{
    public function calculateArea()
    {
        echo 'Area calculated';
    }
}

class Circle extends Shape
{
    public $radius;

    public function calculateArea()
    {
        return 3.14 * $this->radius * $this->radius;
    }
}

class Rectangle extends Shape
{
    public $length;
    public $width;

    public function calculateArea()
    {
        return $this->length * $this->width;
    }
}
echo "<br> <br>";
$circle = new Circle();
$circle->radius = 5;
echo "Circle area ", $circle->calculateArea();
echo "<br> <br>";
$rectangle = new Rectangle();
$rectangle->length = 10;
$rectangle->width = 5;
echo "Rectable area ", $rectangle->calculateArea();
echo "<br> <br>";


?>