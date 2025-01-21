import 'dart:io';

void main() {
// Write a dart program to count the number of words in a string.
// Note :-  Remove white space from the start and end positions and Convert 2 or more spaces to 1.
  String s = "    I am Indestructible ";
  print("String is: \"$s\"");
  String filterString = s.trim().replaceAll("  ", " ");
  List<String> list = filterString.split(" ");
  print("Total Word in String: ${list.length}");

// Write a program that prints two lists with the smallest, and largest numbers from a list. Take a midpoint number from the sorted list
// of a given list, to determine the smallest and largest number. Also, check for duplicates
// For e.g., input: [9,6,7,5,0,3]  -> 6 will be the midpoint output: smallest: [0, 3, 5] largest: [6, 7, 9]
  List<int> mylist = [9, 6, 7, 5, 0, 3];
  mylist.sort();
  print("List: $mylist");
  int midpoint = ((mylist.length - 1) / 2).round();
  List<int> smallest = [];
  List<int> largest = [];
  for (int i = 0; i < mylist.length; i++) {
    if (mylist[i] >= mylist[midpoint]) {
      largest.add(mylist[i]);
    } else {
      smallest.add(mylist[i]);
    }
  }
  print("Largest List: $largest");
  print("Smallest List: $smallest");

  // Given a string, reverse the sentence.
  String s2 = "Welcome to this Javascript Guide!";
  print("String: $s2");
  print("Reverse String: ${s2.split('').reversed.join()}");

  // Write a program to print the fibonacci series of n numbers from 0.
  int a = 0, b = 1, c, n = 5;
  print("Fibonacci Series:-");
  stdout.write("$a ");
  stdout.write("$b ");
  while (n != 0) {
    c = a + b;
    stdout.write("$c ");
    a = b;
    b = c;
    c = a;
    n--;
  }
  print("");

  // Create a program that has static variables for the name and the age.
  // Print out a message that tells how many years they have to be 100 years old.
  Person.name = "Jarvis";
  Person.age = 22;
  Person.countYear();

  // Let’s say you are given a list saved in a variable: a = [1, 4, 9, 16, 25, 36, 45, 64, 81, 100].
  // Write a Dart code that takes this list and makes a new list that has only the elements divisible by 5 of this list in it.
  List<int> numberList = [1, 4, 9, 16, 25, 36, 45, 64, 81, 100];
  List<int> newList = [];

  for (int i = 0; i < numberList.length; i++) {
    if (numberList[i] % 5 == 0) {
      newList.add(numberList[i]);
    }
  }

  print("Divisble by 5 List: $newList");

  // Take a List, for example: a = [1, 1, 2, 3, 5, 8, 13, 21, 34,55, 55, 89] and
  // write a program that returns a list that contains only the Unique elements.
  List<int> duplicates = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 55, 89];
  Set<int> uniqueList = duplicates.toSet();
  print("Unique Element List: ${uniqueList.toList()}");

  // Write a Dart program that creates a class named Person with properties such as name, age, bloodGroup, etc. Then, create a list
  // of Person objects and sort the members by their age, displaying their names.
  List<Person2> personList = [
    Person2("Alpha", 45, "A+"),
    Person2("Charlie", 18, "B+"),
    Person2("Parker", 21, "AB+"),
    Person2("Ada", 10, "B-")
  ];

  personList.sort((a, b) => a.age!.compareTo(b.age!));

  print("Sorted Person Name By Age:-");
  for (var element in personList) {
    print("${element.name} ${element.age}");
  }
}

class Person {
  static int? age;
  static String? name;

  static void countYear() {
    print("Hello $name, After ${100 - age!} you become 100 years old");
  }
}

class Person2 {
  int? age;
  String? name, bloodGroup;

  Person2(this.name, this.age, this.bloodGroup);
}
