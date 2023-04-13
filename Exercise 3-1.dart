abstract class Shape {
  double getPerimeter();
  double getArea();
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double getPerimeter() {
    return 2 * (length + width);
  }

  @override
  double getArea() {
    return length * width;
  }
}

class Triangle extends Shape {
  double base;
  double height;
  double sideA;
  double sideB;
  double sideC;

  Triangle(this.base, this.height, this.sideA, this.sideB, this.sideC);

  @override
  double getPerimeter() {
    return sideA + sideB + sideC;
  }

  @override
  double getArea() {
    return 0.5 * base * height;
  }
}

class Square extends Shape {
  double length;

  Square(this.length);

  @override
  double getPerimeter() {
    return 4 * length;
  }

  @override
  double getArea() {
    return length * length;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double getPerimeter() {
    return 2 * 3.14 * radius;
  }

  @override
  double getArea() {
    return 3.14 * radius * radius;
  }
}

void main() {
  var rectangle = Rectangle(10, 5);
  print('Rectangle perimeter: ${rectangle.getPerimeter()}');
  print('Rectangle area: ${rectangle.getArea()}');

  var triangle = Triangle(8, 6, 7, 9, 5);
  print('Triangle perimeter: ${triangle.getPerimeter()}');
  print('Triangle area: ${triangle.getArea()}');

  var square = Square(6);
  print('Square perimeter: ${square.getPerimeter()}');
  print('Square area: ${square.getArea()}');

  var circle = Circle(4);
  print('Circle perimeter: ${circle.getPerimeter()}');
  print('Circle area: ${circle.getArea()}');
}