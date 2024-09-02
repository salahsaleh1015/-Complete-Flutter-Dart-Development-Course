

// class contain ( attributes + methods )
class Human {
  // constructor
  Human(
      {required String skinColor,
        required int height,
        required int weight,
        required int age,
      }) {
    this.skinColor = skinColor;
    this.height = height;
    this.weight = weight;
    this.age = age;
  }

  // attributes
  String? skinColor;
  int? height;
  int? weight;
  int? age;
  int _numOfArms = 2;

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
