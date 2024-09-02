// class contain ( attributes + methods )
class Human {
  // constructor
  Human({
     this.skinColor,
     this.height,
     this.weight,
     this.age,

  });

  // attributes
  String? skinColor;
  int? height;
  int? weight;
  int? age;
  int _numOfArms = 2;

  // methods

 set numOfArms(int numOfArms) {
    if (numOfArms >= 0 && numOfArms <= 2) {
      _numOfArms = numOfArms;
    }
  }


 int get getNumOfArms => _numOfArms;
}

///Note : method is A function that initialized in a class
