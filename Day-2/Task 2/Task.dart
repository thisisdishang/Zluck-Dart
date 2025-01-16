// Write a program in Dart to print your own name using function.
import 'dart:math';

void printName(){
  print('Dishang');
}

// Write a program in Dart to print even numbers between intervals using function.
void evennumber(int a,int b){
  for(int i=a;i<=b;i++){
    if(i.isEven){
      print(i);
    }
  }
}

// Create a function called greet that takes a name as an argument and prints a greeting message.
// For example, greet(“John”) should print “Hello, John”.
void greet(String name){
  print('Hello, $name');
}

// Write a program in Dart that generates random password.
void randomPassword() {
  Random random = new Random();
  const characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()_+';
  String password = '';
  int length = 8;
  for (int i = 1; i <= length; i++) {
    password += characters[random.nextInt(characters.length)];
  }
  print(password);
}

// Write a program in Dart that find the area of a circle using function. Formula: pi * r * r
void areaOfCircle(double r){
  const pi=3.14;
  print('Area of Circle = ${pi*r*r}');
}

// Write a program in Dart to reverse a String using function.
String reverseString(String s){
  return s.split('').reversed.join();
}

// Write a function in Dart named add that takes two numbers as arguments and returns their sum.
int add(int a,int b){
  return a+b;
}

// Write a function in Dart called maxNumber that takes three numbers as arguments and returns the largest number.
int maxNumber(int a, int b, int c){
  int max;
  (a>b && a>c) ? max = a: (b>a && b>c) ? max = b : max = c;
  return max;
}

// Write a function in Dart called isEven that takes a number as an argument and returns True if the number is even, and False otherwise.
bool isEven(int num){
  if(num.isEven){
    return true;
  }
  else{
    return false;
  }
}

// Write a function in Dart called createUser with parameters name, age, and isActive, where isActive has a default value of true.
void createUser(String name,int age,[bool isActive=true]){
  print("User created...Name=$name Age=$age Activer=$isActive");
}

// Write a function in Dart called calculateArea that calculates the area of a rectangle.
// It should take length and width as arguments, with a default value of 1 for both. Formula: length * width.
void calculateArea([double length=1, double width=1]){
  print('Area of rectangle ${length*width}');
}


void main(){
  printName();
  evennumber(1, 10);
  greet("John");
  randomPassword();
  areaOfCircle(5);
  String r=reverseString("Dishang Rana");
  print('Reverse String: $r');

  // Write a program in Dart to calculate power of a certain number. For e.g 5^3=125
  print('Power of two number: ${pow(5, 3)}');

  int sum=add(8, 9);
  print('Sum is $sum');

  int max=maxNumber(28, 15, 10);
  print('Maximum Number is $max');

  print(isEven(5));

  createUser('Kairos', 45);

  calculateArea(9,8);
  
}