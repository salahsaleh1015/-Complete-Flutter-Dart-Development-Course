import 'package:complete_flutter_dart_development_course/human.dart';

void main() {
  // draw circle

  Circle circle = Circle(x: 10, y: 20, radius: 30);
  Circle originCircle = Circle.origin(radius: 30);

  circle.draw();
  originCircle.draw();
}

class Circle {
  late int x;
  late int y;
  late int radius;

  Circle({required this.x, required this.y, required this.radius});

  draw() {
    print("drawing a circle at $x, $y with radius $radius");
  }

  Circle.origin({required this.radius}) {
    x = 0;
    y = 0;
  }
}
