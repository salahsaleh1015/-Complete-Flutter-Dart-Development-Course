
void main() {

  Human salah = Human();

  salah.age = 34;
  salah.height = 5;
  salah.weight = 60;
  salah.skinColor = "white";

  print(salah.numOfArms);

}



class Human{

  String? skinColor;
  int? height;
  int? weight;
  int? age;
  int numOfArms = 2;

}
