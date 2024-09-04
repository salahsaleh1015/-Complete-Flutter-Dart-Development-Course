import 'package:complete_flutter_dart_development_course/human.dart';

void main() {
  Lion lion = Lion();
  Cat cat = Cat();
  Dog dog = Dog();
  // zoo animals

  List<Animal> zooAnimals = [lion, cat, dog];
}
class Animal {
  Animal(this.weight, this.skinColor);

  double weight;
  String skinColor;
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

class Lion extends Animal {
  Lion(this.name, super.weight, super.skinColor);
  String name;
  void roar() {
    print('roar');
  }

  @override
  void eat() {
    print('lion is eating');
  }
}

class Dog extends Animal {
  Dog(super.weight, super.skinColor);

  void bark() {
    print('bark');
  }
}

class Cat extends Animal {
  Cat(super.weight, super.skinColor);

  void meow() {
    print('meow');
  }
}
