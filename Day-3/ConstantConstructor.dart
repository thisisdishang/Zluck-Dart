class Student {
  final String? name;
  final int? age;
  final int? rollNumber;

  // Constant Constructor
  const Student({this.name, this.age, this.rollNumber});
}

class Customer {
  final String? name;
  final int? age, phone;

  const Customer(this.name, this.age, this.phone);
}

void main() {
  // class containing const constructor is initialized using the const keyword.
  Student student = const Student(name: "Eva", age: 22, rollNumber: 101);
  Student student2 = const Student(name: "Eva", age: 22, rollNumber: 101);
  Student student3 = Student(name: "Carl", age: 22, rollNumber: 103);
  print("Hashcode of object 1: ${student.hashCode}");
  print("Hashcode of object 2: ${student2.hashCode}");
  print("Hashcode of object 3: ${student3.hashCode}");
  print(student2.hashCode);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");

  const Customer c1 = Customer('X', 18, 878754);
  print("Customer Name: ${c1.name}");
  print("Customer Age: ${c1.age}");
  print("Customer Phone: ${c1.phone}");
}
