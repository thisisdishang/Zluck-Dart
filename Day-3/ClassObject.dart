// Class in Dart
class Employee {
  // properties or attribute or data members or fields
  int? eid;
  String? ename;
  String? egender;
  int? eage;

  // methods or behaviour or member functions
  void display() {
    print("Employee Id: $eid");
    print("Employee Name: $ename");
    print("Employee Gender: $egender");
    print("Employee Age: $eage");
    print("\n");
  }
}

class Book {
  String? name, author, price;

  void display() {
    print("Book Name: $name");
    print("Book Author: $author");
    print("Book Price: $price");
  }
}

class Camera {
  String? name, color, megapixel;

  void display() {
    print("Camera Name: $name");
    print("Camera Color: $color");
    print("Camera Megapixel: $megapixel");
    print("\n");
  }
}

void main() {
  Camera c1 = Camera();
  c1.name = "Canon";
  c1.color = "Black";
  c1.megapixel = "150";

  Camera c2 = Camera();
  c2.name = "Nikon";
  c2.color = "Greay";
  c2.megapixel = "100";

  c1.display();
  c2.display();

  Employee e1 = Employee();
  e1.eid = 101;
  e1.ename = "Alex";
  e1.eage = 25;
  e1.egender = "Male";
  e1.display();

  Book b1 = Book();
  b1.name = "Dart Programming";
  b1.author = "Google";
  b1.price = "350Rs";
  b1.display();
}
