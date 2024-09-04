
void main() {
  List<Animal> animals = [Dog(leg: 4), Cat(), Snake()];
}

class Animal {}

class Dog extends Animal {
  Dog({required this.leg});
  int leg;
}

class Cat extends Animal {}

class Snake extends Animal {}
