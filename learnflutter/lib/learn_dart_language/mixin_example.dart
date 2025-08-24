import 'package:flutter/material.dart';

//====================
// MARK: MIXIN
//====================

/*
Notes on using Mixins
No constructor: Mixins cannot have a constructor. If you need to initialize, do it in the main class.
Cannot inherit from Mixins: Mixins cannot be inherited by extends, can only be used with with.
Order of Mixins: If multiple Mixins provide the same method, the Mixin listed last will take precedence.
Restrictions with on: Use on to bind the Mixin to a specific parent class if you need to access the parent class's components.
Compared to inheritance: Mixins are good when you want to share behavior without creating a strict inheritance relationship. If you need a clear hierarchy, use extends.


When to use Mixins?
When you want to reuse code without creating inheritance relationships.
When a behavior can be applied to multiple unrelated classes.
When you want to avoid the complexity of multi-level inheritance.
 */

mixin Flyable {
  void fly() {
    debugPrint('I can fly');
  }
}

mixin Swimable {
  void swim() {
    debugPrint('I can swim');
  }
}

class Bird with Flyable {
  String birdName;
  Bird(this.birdName);
}

class Fish with Swimable {
  String fishName;
  Fish(this.fishName);
}

//====================
// MARK: MIXIN Using Multiple Mixins 'with' ','
//====================
class Duck with Flyable, Swimable {
  // can extends more than one mixin
  String duckName;
  Duck(this.duckName);
}

/////////////////////////////////////////

//========================================
// MARK: Binding to Mixins using 'on'
//========================================
/* Only classes that meet the following conditions after 'on' syntax can use mixins. */

mixin Runable on Animal { // 
  void run() {
    debugPrint('I can run');
  }
}

class Animal {
  void eating() {
    debugPrint('Animal is eating');
  }
}

class Dog extends Animal with Runable {
  String dogName;
  Dog(this.dogName);
  void bark() {
    debugPrint('Woof woof');
  }
}

/*
class Cat with Runable { // ERROR: Need to extends super class Animal then can use metod of Mixin Runable
  void meow() {
    debugPrint('Meow meow');
  }
}
*/

/*
void main() {
  var bird = Bird('Red bird');
  debugPrint(bird.birdName);
  bird.fly();

  var fish = Fish('Blue Fish');
  debugPrint(fish.fishName);
  fish.swim();

  var duck = Duck('Sky Duck');
  debugPrint(duck.duckName);
  duck.fly();
  duck.swim();

  debugPrint('\n');

  var dog = Dog('Corgi dog');
  debugPrint(dog.dogName);
  dog.eating();
  dog.bark();
  dog.run();
}
*/