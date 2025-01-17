import 'dart:convert';

class Student {
  String? name;
  int? age, rollNumber;

  Student() {
    print("Default constructor called");
  }

  Student.namedConstructor(String name, int age, int rollNumber) {
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }

  Student.namedConstructor2(String name, [int age = 0]) {
    this.name = name;
    this.age = age;
  }
}

class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  Person.fromJSON(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
  }

  Person.fromJSONString(String jsonstring) {
    Map<String, dynamic> json = jsonDecode(jsonstring);
    name = json['name'];
    age = json['age'];
  }
}

class Car {
  String? name, color;
  int? price;

  Car(this.name, this.color, this.price);

  Car.namedConstructor(this.name, this.color);

  void display() {
    print("Car Name: $name");
    print("Car Color: $color");
    print("Car Price: $price");
  }
}

void main() {
  Student student = Student.namedConstructor("Alpha", 18, 201);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");

  Student student2 = Student.namedConstructor2("Rana");
  print("Name: ${student2.name}");
  print("Age: ${student2.age}");

  String jsonString1 = '{"name":"test","age":30}';
  Map<String, dynamic> mymap = {"name": "Lara", "age": 45};

  Person p1 = Person.fromJSONString(jsonString1);
  Person p2 = Person.fromJSON(mymap);

  print("Person 1 Name: ${p1.name}");
  print("Person 1 Age: ${p1.age}");

  print("Person 2 Name: ${p2.name}");
  print("Person 2 Age: ${p2.age}");

  String s = jsonEncode(mymap);
  print(s);

  Car c1 = Car("Audi", "Yellow", 5200000);
  c1.display();

  Car c2 = Car.namedConstructor("BMW", "Red");
  c2.display();
}
