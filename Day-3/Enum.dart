enum Gender { Male, Female, Other }

class Person {
  String? firstName;
  String? lastName;
  Gender? gender;

  Person(this.firstName, this.lastName, this.gender);

  void display() {
    print("First Name: $firstName");
    print("Last Name: $lastName");
    print("Gender: $gender");
  }
}

enum Days { Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday }

void main() {
  Person p1 = Person("Dishang", "Rana", Gender.Male);
  p1.display();

  Person p2 = Person("S", "Sharma", Gender.Female);
  p2.display();

  for (Days d in Days.values) {
    print(d);
  }
}
