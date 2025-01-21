// Write a program to check from two given integers whether one of them is 8 or their sum or difference is 8
import 'dart:math';

void checkNum(int a, int b) {
  if (a == 8 || b == 8) {
    print("One of thme is 8");
  } else if (a + b == 8) {
    print("Sum of two number is 8");
  } else if ((a - b).abs() == 8) {
    print("Difference of two number is 8");
  }
}

// prime number function
bool isPrime(int num) {
  if (num <= 1) {
    return false;
  }

  for (int i = 2; i < num; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

// Model class
class Model {
  String? name;
  int? age;

  Model({this.name, this.age});
}

void main() {
  checkNum(2, 10);

  // Write a program with a Model to find age of a user “John” from given list = [(name:’josheph’,age:22),(name:’john’,age:30)]
  List<Model> mylist = [
    Model(name: 'josheph', age: 22),
    Model(name: 'john', age: 30)
  ];

  Model? person = mylist.firstWhere((value) => value.name == "john");

  if (person.name!.isNotEmpty) {
    print("Age: ${person.age}");
  } else {
    print("Age not found");
  }

  // Write a program to sort an array=34,56,2,3,89,76 in ascending order
  List<int> array = [34, 56, 2, 3, 89, 76];
  array.sort();
  print(array);

  // Write a program to find index of the element from list element with age 23 from
  // given list = {name:'shruti',age:22},{name:'xyz',age:23}
  List<Model> list2 = [
    Model(name: 'shruti', age: 22),
    Model(name: 'xyz', age: 23)
  ];

  int myindex = list2.indexWhere((value) => value.age == 23);

  if (myindex != -1) {
    print("Index of user with age 23 is ${myindex}");
  } else {
    print("Index not found");
  }

  // Write a program to print list accordingly list length given by user
  var userlength = 2;
  List<String> mylist2 = ["Kairaos", "Lucifer", "Emma", "Dezy"];
  for (int i = 0; i < userlength; i++) {
    print(mylist2[i]);
  }

  // Write a program to check if given three number is same or not
  int n1 = 3, n2 = 3, n3 = 3;
  if (n1 == n2 && n1 == n3) {
    print("All three numbers are equal");
  } else {
    print("Numbers are not equals");
  }

  // In a list of 4,5,7,5,9,7,8,2 find out which are repeated
  List<int> l = [4, 5, 7, 5, 9, 7, 8, 2];
  List<int> uniqueNumbers = [];
  List<int> repeatedNumbers = [];

  for (var number in l) {
    if (uniqueNumbers.contains(number)) {
      repeatedNumbers.add(number);
    } else {
      uniqueNumbers.add(number);
    }
  }
  print("Repeted Number: ${repeatedNumbers}");

  // In a list of ‘John’, ‘Jessica’, ‘Kevin’, ‘Joe’, find all names which one starts from ‘Jo’
  List<String> names = ["John", "Jessica", "Kevin", "Joe"];
  print(names
      .where((value) => value.toLowerCase().startsWith("Jo".toLowerCase())));

  // In a list of ‘John’, ‘Jessica’, ‘Kevin’, ‘Joe’, find first(one) name which one starts from ‘Jo’
  print(names.firstWhere(
      (value) => value.toLowerCase().startsWith("Jo".toLowerCase())));

  // Write a program that would take full name as input, will give first name and last name as output
  String fullName = "Dishang H. Rana";
  print(fullName);
  var name = fullName.split(" ");
  print("Your First Name: ${name[0]} and Last Name: ${name[name.length - 1]}");

  // Write a program to display the current day and time in the following format.
  // Sample Output : Today is : Tuesday
  // Current time is : 10 PM : 30 : 38
  DateTime now = DateTime.now();

  List<String> weekdays = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];

  String currentDay = weekdays[now.weekday - 1];
  print("Today is : $currentDay");

  String formattedTime =
      "${now.hour > 12 ? now.hour - 12 : now.hour} ${now.hour >= 12 ? 'PM' : 'AM'} : ${now.minute} : ${now.second}";
  print("Current time is : $formattedTime");

  // Take a number from user and print grade(If 90+ then A+…etc.)
  int num = 85;
  if (num > 90) {
    print("Your Grade: A+");
  } else if (num >= 85 && num <= 90) {
    print("Your Grade: A");
  } else if (num >= 75 && num < 85) {
    print("Your Grade: B+");
  } else if (num >= 65 && num < 75) {
    print("Your Grade: B");
  } else if (num >= 55 && num < 65) {
    print("Your Grade: C+");
  } else if (num >= 35 && num < 55) {
    print("Your Grade: C");
  } else {
    print("Fail");
  }

  // Write a program to print array of prime numbers from given List = 1,45,67,3,7,13,17,68,200,53,77
  List<int> numberList = [1, 45, 67, 3, 7, 13, 17, 68, 200, 53, 77];
  print(numberList.where((value) => isPrime(value)));

  // Write a program with a model to get oldest age and name that starts with "Jo" from given
  // list = [(name:’josheph’,age:22),(name:’john’,age:30),(name:’ross’,age:25),(name:’chandler’,age:54),(name:’josh’,age:28)].
  List<Model> newList = [
    Model(name: 'josheph', age: 22),
    Model(name: 'John', age: 30),
    Model(name: 'ross', age: 25),
    Model(name: 'chandler', age: 54),
    Model(name: 'josh', age: 28)
  ];

  List<Model> JoPeople = newList
      .where((value) => value.name!.toLowerCase().startsWith("jo".toLowerCase()))
      .toList();

  // for get single value use reduce method
  Model? oldOne = JoPeople.isNotEmpty
      ? JoPeople.reduce(
          (current, next) => current.age! > next.age! ? current : next)
      : null;

  if (oldOne != null) {
    print("Oldest Person Name: ${oldOne.name} and Age: ${oldOne.age}");
  } else {
    print("Person not found");
  }
}
