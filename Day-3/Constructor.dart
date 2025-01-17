// Constructor in dart
class Student {
  String? name;
  int? age, rollNumber;

  Student(String name, int age, int rollNumber) {
    print("Student Object initiated");
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }
}

class Person {
  String? name;
  int? age;

  // Single line constructor
  Person(this.name, this.age);

  void display() {
    print("Person Name: ${this.name}");
    print("Person Age: ${this.age}");
  }
}

class Teacher {
  String? name, subject;
  int? age, salary;

  // Constructor with optional parameters
  Teacher(this.name, this.age, [this.subject = "N/A", this.salary = 0]);

  void display() {
    print("Teacher Name: $name");
    print("Teacher Age: $age");
    print("Teacher Subject: $subject");
    print("Teacher Salary: $salary\n");
  }
}

class Car {
  String? name, color;

  // Constructor with named parameters
  Car({this.name, this.color});

  void display() {
    print("Car Name: ${this.name}");
    print("Car Color: ${this.color}");
  }
}

class Table {
  String? name;
  String? color;

  // Constructor with default values
  Table({this.name = "Table1", this.color = "Grey"});

  void display() {
    print("Name: ${this.name}");
    print("Color: ${this.color}");
  }
}

void main() {
  Student student = Student("Veda", 18, 102);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");

  Person p1 = Person("Test", 28);
  p1.display();

  Teacher teacher = Teacher("Emma", 32, "CS", 50000);
  teacher.display();

  Teacher teacher2 = Teacher("Carl", 28);
  teacher2.display();

  Car car = Car(name: "BMW", color: "Black");
  car.display();

  Table table = Table();
  table.display();
}
