void main() {
  Human salah = Human();

  salah.age = 34;
  salah.height = 5;
  salah.weight = 60;
  salah.skinColor = "white";

  print(salah.numOfArms);

  salah.eat();
  salah.sleep();
  salah.code();
}

// class contain ( attributes + methods )
class Human {
  // constructor
  Human(){}


  // attributes
  String? skinColor;
  int? height;
  int? weight;
  int? age;
  int numOfArms = 2;

  // methods

  void eat() {
    print("human is eating");
  }

  void sleep() {
    print("human is sleeping");
  }

  void code() {
    print("human is coding");
  }
}

///Note : method is A function that initialized in a class
