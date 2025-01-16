// Write a program to print a square of a number using user input.
import 'dart:io';

void main(){
  int? num;
  print("Enter the number: ");
  num=int.parse(stdin.readLineSync()!);
  print("Sqaure of number is ${num*num}");
}