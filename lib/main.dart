import 'package:complete_flutter_dart_development_course/human.dart';

void main() {
  Lion lion = Lion();
  Dog dog = Dog();
  Cat cat = Cat();



  cat.meow();
  cat.move();
  dog.bark();
  dog.eat();
  lion.roar();
  lion.sleep();


}

class Animal {
  int numOfLimps = 4;
  void eat() {
    print('eat');
  }

  void sleep() {
    print('sleep');
  }

  void move() {
    print('move');
  }
}

class Lion extends Animal{
  void roar() {
    print('roar');
  }
}

class Dog extends Animal{
  void bark() {
    print('bark');
  }
}

class Cat extends Animal{
  void meow() {
    print('meow');
  }
}
