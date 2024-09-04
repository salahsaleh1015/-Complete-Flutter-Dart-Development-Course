import 'package:complete_flutter_dart_development_course/human.dart';

void main() {
  // draw circle

}


class Animal {
  String name = "Animal";
  String color = "Black";
  int age = 5;

  void eat() {
    print("Animal is eating");
  }

}

mixin MammalsMixin {

  void walk() {}
}

mixin ReptilesMixin {

  void crawl() {}
}

class Dog extends Animal with MammalsMixin {}

class Cat extends Animal with MammalsMixin {}

class Snake extends Animal with ReptilesMixin {}