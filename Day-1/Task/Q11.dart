import 'dart:io';

/** Suppose, you often go to restaurant with friends and you have to split amount of bill. 
 * Write a program to calculate split amount of bill. Formula= (total bill amount) / number of people */
 void main(){
  print("Enter total amount of bill: ");
  int? totalbill=int.parse(stdin.readLineSync()!);

  print("Enter number of people: ");
  int? people=int.parse(stdin.readLineSync()!);

  print("Split amount of bill = ${totalbill~/people}");
  
 }