<?php

// Abstract class

abstract class Animal
{
    protected $name;

    public function setName($name)
    {
        $this->name = $name;
    }

    abstract public function makeSound();
}

// Class implemeting the abstract class
class Dog extends Animal
{
    public function makeSound()
    {
        echo "Woof!";
    }
}

// Interface
interface Vehicle
{
    public function startEgine();
}

// Class implemeting the interface
class Car implements Vehicle
{
    public function startEgine()
    {
        echo "Engine started!";
    }
}

// Create objects and demonstrate usage
// Abstract class and subclass
echo "<br><br>";
$dog = new Dog();
$dog->setName("Max");
$dog->makeSound();
echo "<br><br>";
//Interface and implementing class
$car = new Car();
$car->startEgine();
echo "<br><br>";

?>