// Write a program to print full name of a from first name and last name using user input.
import 'dart:io';

void main(){
  String? FirstName,LastName;
  print("Enter the first name:");
  FirstName=stdin.readLineSync();

  print("Enter the last name: ");
  LastName=stdin.readLineSync();

  print("Your Full Name is $FirstName $LastName");
}