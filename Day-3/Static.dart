// static method and property

class Student {
  int id;
  String name;
  static String schoolName = "SDJIC";
  Student(this.id, this.name);
  void display() {
    print("Id: ${this.id}");
    print("Name: ${this.name}");
    print("School Name: ${Student.schoolName}");
  }
}

class SimpleInterest {
  static double calculateInterest(double principal, double rate, double time) {
    return (principal * rate * time) / 100;
  }
}

void main() {
  Student s1 = new Student(1, "Alpha");
  s1.display();
  Student s2 = new Student(2, "Beta");
  s2.display();
}
