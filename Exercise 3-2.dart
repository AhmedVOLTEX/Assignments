import 'dart:math';

class Point {
  double x;
  double y;

  Point(this.x, this.y);
}

class Rectangle {
  Point point1;
  Point point2;
  Point point3;
  Point point4;

  Rectangle(this.point1, this.point2, this.point3, this.point4);

  double getWidth() {
    return max(point2.x - point1.x, point3.x - point4.x);
  }

  double getHeight() {
    return max(point4.y - point1.y, point3.y - point2.y);
  }

  double getArea() {
    return getWidth() * getHeight();
  }

  double getPerimeter() {
    return 2 * (getWidth() + getHeight());
  }
}

void main() {
  print('Please enter the coordinates of four points in the format (X,Y):');
  var input1 = stdin.readLineSync()!;
  var input2 = stdin.readLineSync()!;
  var input3 = stdin.readLineSync()!;
  var input4 = stdin.readLineSync()!;

  var point1 = Point(double.parse(input1.split(',')[0]), double.parse(input1.split(',')[1]));
  var point2 = Point(double.parse(input2.split(',')[0]), double.parse(input2.split(',')[1]));
  var point3 = Point(double.parse(input3.split(',')[0]), double.parse(input3.split(',')[1]));
  var point4 = Point(double.parse(input4.split(',')[0]), double.parse(input4.split(',')[1]));

  var rectangle = Rectangle(point1, point2, point3, point4);

  if (rectangle.getWidth() == rectangle.getHeight()) {
    print('The points form a square');
    print('Area: ${rectangle.getArea()}');
    print('Perimeter: ${rectangle.getPerimeter()}');
  } else {
    print('The points form a rectangle');
    print('Area: ${rectangle.getArea()}');
    print('Perimeter: ${rectangle.getPerimeter()}');
  }
}