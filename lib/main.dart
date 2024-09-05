import 'dart:io';

void main() {
  List<String> names = ['salah'];

  try {
    print(names[5]);
  } on RangeError {
    print('sorry there is no name with index 5');
  } on HttpException {
    print('sorry there is no name with index 5');
  } catch (e) {
    print('sorry there is no name with index 5');
  }
}
