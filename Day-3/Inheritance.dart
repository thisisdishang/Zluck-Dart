// Inheritance in dart

class Car {
  String? name;
  double? price;
}

class Tesla extends Car {
  void display() {
    print("Name: ${name}");
    print("Price: ${price}");
  }
}

class Model3 extends Tesla {
  String? color;

  void display() {
    super.display();
    print("Color: ${color}");
  }
}

void main() {
  Model3 m = new Model3();
  m.name = "Tesla Model 3";
  m.price = 50000.00;
  m.color = "Red";
  m.display();
}
