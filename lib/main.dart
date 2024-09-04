void main() {
  Gender gender = Gender.male;

  switch (gender) {
    case Gender.male:
      print("male");
      break;
    case Gender.female:
      print("female");
      break;
  }
}

enum Gender { male, female }
