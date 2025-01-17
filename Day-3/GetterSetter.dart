// getter and setter in dart
class Student {
  // private properties
  String? _firstName;
  String? _lastName;
  int? _age;

  // getter and setter method
  String get fullName => this._firstName! + " " + this._lastName!;

  int get age => this._age!;

  set firstName(String firstName) => this._firstName = firstName;

  set lastName(String lastName) => this._lastName = lastName;

  set age(int age) {
    if (age < 0) {
      throw new Exception("Age can't be less than 0");
    }
    this._age = age;
  }
}

class BankAccount {
  double _balance = 0;

  double get balance => this._balance;

  void deposit(double amount) {
    this._balance += amount;
  }

  void withdraw(double amount) {
    if (this._balance >= amount) {
      this._balance -= amount;
    } else {
      throw new Exception("Insufficient Balance");
    }
  }
}

void main() {
  Student student = new Student();
  student.firstName = "Thanos";
  student.lastName = "Larry";
  student.age = 21;

  print("Full Name: ${student.fullName}");
  print("Age: ${student.age}");

  BankAccount account = BankAccount();
  account.deposit(5000);
  print("Balance after deposit: ${account.balance}");
  account.withdraw(500);
  print("Balance after withdraw: ${account.balance}");
}
