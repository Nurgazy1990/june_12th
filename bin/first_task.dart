// Создайте класс Shape (фигура) с методом calculateArea(),
// который должен быть переопределен в производных классах.
// Создайте два производных класса: Rectangle (прямоугольник) и Circle (окружность).
// Реализуйте метод calculateArea() для каждого из этих классов,
// чтобы он возвращал площадь соответствующей фигуры.
// Создайте массив объектов разных фигур и выведите их площади.

void main() {
  Circle a = Circle(radius: 30);
  Rectangle b = Rectangle(sideA: 3, sideB: 6);
  List<Shape> c = [a, b];
  for (int i = 0; i < c.length; i++) {
    print(c[i].calculateArea());
  }
}

abstract class Shape {
  Shape();
  calculateArea();
}

class Rectangle implements Shape {
  num sideA;
  num sideB;
  Rectangle({required this.sideA, required this.sideB});

  @override
  calculateArea() {
    return sideA * sideB;
  }
}

class Circle implements Shape {
  num radius;
  Circle({required this.radius});

  @override
  calculateArea() {
    num s = 3.14 * (radius * radius);
    return s;
  }
}
