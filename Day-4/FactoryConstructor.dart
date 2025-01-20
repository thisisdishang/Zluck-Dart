// Factory constructor in dart
class Area {
  final int length;
  final int breadth;
  final int area;

  // private constructor (declare using ._)
  const Area._internal(this.length, this.breadth) : area = length * breadth;

  // factory constructor
  factory Area(int length, int breadth) {
    if (length < 0 || breadth < 0) {
      throw Exception("Length and breadth must be positive");
    }
    // redirect to private constructor
    return Area._internal(length, breadth);
  }
}

// enum ShapeType
enum ShapeType { circle, rectangle }

// abstract class Shape
abstract class Shape {
  // factory constructor
  factory Shape(ShapeType type) {
    switch (type) {
      case ShapeType.circle:
        return Circle();
      case ShapeType.rectangle:
        return Rectangle();
      default:
        throw 'Invalid shape type';
    }
  }
  // method
  void draw();
}

class Circle implements Shape {
  // implement draw method
  @override
  void draw() {
    print('Drawing circle');
  }
}

class Rectangle implements Shape {
  // implement draw method
  @override
  void draw() {
    print('Drawing rectangle');
  }
}

// Singleton using dart factory
class Singleton {
  // static variable
  static final Singleton _instance = Singleton._internal();

  // factory constructor
  factory Singleton() {
    return _instance;
  }
  // private constructor
  Singleton._internal();
}

void main() {
  // This works
  Area area = Area(10, 20);
  print("Area is: ${area.area}");

  // notice that here is negative value
  // Area area2 = Area(-10, 20);
  // print("Area is: ${area2.area}");

  // create Shape object
  Shape shape = Shape(ShapeType.circle);
  Shape shape2 = Shape(ShapeType.rectangle);
  shape.draw();
  shape2.draw();

  Singleton ob1 = Singleton();
  Singleton ob2 = Singleton();
  print(ob1.hashCode);
  print(ob2.hashCode);
}
