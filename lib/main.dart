import 'package:complete_flutter_dart_development_course/human.dart';

void main() {
  Lion lion = Lion();
  Cat cat = Cat();
  Dog dog = Dog();
  // zoo animals

  List<Animal> zooAnimals = [lion, cat, dog];
}
 abstract class Animal {

  int numOfLimps = 4;

   void eat();

  void sleep() {
    print('sleep');
  }

  void move() {
    print('move');
  }
}

// class Lion extends Animal {
//
//
//   void roar() {
//     print('roar');
//   }
//
//   @override
//   void eat() {
//     print('lion is eating');
//   }
// }

class Dog implements Animal {


  void bark() {
    print('bark');
  }

  @override
  void eat() {
    // TODO: implement eat
  }

  @override
  int numOfLimps = 4;

  @override
  void move() {
    // TODO: implement move
  }

  @override
  void sleep() {
    // TODO: implement sleep
  }
}

// class Cat extends Animal {
//
//   void meow() {
//     print('meow');
//   }
//
//   @override
//   void eat() {
//     // TODO: implement eat
//   }
// }
