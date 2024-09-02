import 'package:complete_flutter_dart_development_course/human.dart';



void main() {
  Human salah = Human(age: 33, height: 180, skinColor: "black", weight: 95);

  salah.setNumOfArms(2);
  print( salah.getNumOfArms());

}

