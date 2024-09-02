// class contain ( attributes + methods )
class Human {
  // constructor
  Human({
    required String skinColor,
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

  setNumOfArms(int numOfArms) {
    if (numOfArms >= 0 && numOfArms <= 2) {
      _numOfArms = numOfArms;
    }
  }


 int getNumOfArms() {
    return _numOfArms;
 }
}

///Note : method is A function that initialized in a class
