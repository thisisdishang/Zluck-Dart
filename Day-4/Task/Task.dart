// What is the purpose of the ? operator in Dart null safety?
// To declare a variable nullable

// How do you declare a nullable type in Dart null safety
// Using ? keyword

import 'dart:math';

void main() {
  // Create a late variable named address, assign a US value to it and print it.
  late String address;
  address = "US";
  print(address);

  // Write a program in a dart to create an age variable and assign a null value to it using ?.
  int? age;
  age = null;
  print(age);

  print(myfunction(null));

  String status=generateRandom()??"0";
  print(status);

}

// Write a function that accepts a nullable int parameter and returns 0 if the value is null using null coalescing operator ??.
int myfunction(int? n) {
  return n ?? 0;
}

// Write a function named generateRandom() in dart that randomly returns 100 or null. Also, assign a return value of the function
// to a variable named status that can’t be null. Give status a default value of 0, if generateRandom() function returns null.
String? generateRandom() {
  return Random().nextBool() ? "100" : null;
}
