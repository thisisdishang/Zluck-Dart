// Write a program in Dart that finds simple interest. Formula= (p * t * r) / 100.

import 'dart:io';
void main(){
  
  print("Enter principle amount: ");
  double? p=double.parse(stdin.readLineSync()!);

  print("Enter rate of interest: ");
  double? r=double.parse(stdin.readLineSync()!);

  print("Enter number of years");
  double? t=double.parse(stdin.readLineSync()!);
  
  double PI=(p*t*r)/100;

  print("Simple Interest = $PI");
}