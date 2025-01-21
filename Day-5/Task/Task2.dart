import 'dart:io';

void main() {
  // Write dart program to convert temperature from degree Celsius to Fahrenheit
  num Celsius = 29;
  num Fahrenheit = (9 / 5) * Celsius + 32;
  print("${Celsius} C is equal to ${Fahrenheit} F");

  // Write dart Program to find gross salary. Ex. Base Salary: 100 RS, HRA=10%, DA=5%, TA=8%.  Ans = 123 RS
  num BS = 100, HRA = 10, DA = 5, TA = 8;
  num GS = BS + ((BS * HRA) / 100) + ((BS * DA) / 100) + ((BS * TA) / 100);
  print("Your Gross Salary: $GS");

  // Write dart program use switch statement. Display Monday to Sunday. Ex. User Input: M, Output: Monday
  var s = 'w';
  switch (s.toLowerCase()) {
    case 's':
      print("Sunday");
      break;
    case 'm':
      print("Monday");
      break;
    case 't':
      print("Tuesday");
      break;
    case 'w':
      print("Wednesday");
      break;
    case 'th':
      print("Thursday");
      break;
    case 'f':
      print("Friday");
      break;
    case 'sa':
      print("Saturday");
      break;
    default:
      print("Invalid character");
  }

  // Write a dart program to input electricity unit charges and calculate total electricity bill according to the given condition:
  // For first 50 unit Rs. 0.50/unit
  // For next 100 unit Rs. 0.75/unit
  // For next 100 unit Rs. 1.20/unit
  // For unit above 250 Rs. 1.50/unit
  // An additional surcharge of 20% is added to the bill.
  num unit = 55;
  num totalAmount = 0;

  if (unit <= 50) {
    totalAmount = unit * 0.50;
  } else if (unit <= 150) {
    totalAmount = (50 * 0.50) + ((unit - 50) * 0.75);
  } else if (unit <= 250) {
    totalAmount = (50 * 0.50) + (100 * 0.75) + ((unit - 150) * 1.20);
  } else {
    totalAmount =
        (50 * 0.50) + (100 * 0.75) + (100 * 1.20) + ((unit - 250) * 1.50);
  }

  num charges = totalAmount * 0.20;
  totalAmount += charges;
  print("Total Bill $totalAmount");

  // Create a program that will calculate how old you will be in a future year? Store your birth year in a variable.
  // Store a future year in a variable. Calculate the possible age for that year based on the stored values.
  // For example, if you were born in 1988, then in 2026 you'll be 37.
  var bYear = 2003, fYear = 2045;
  print(
      "if you were born in $bYear, then in $fYear you'll be ${(fYear - bYear) - 1}.");

  // Program to print patterns:
  print("First Pattern:-");
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write("* ");
    }
    stdout.write("\n");
  }

  print("\nSecond Pattern");
  for (int i = 5; i > 0; i--) {
    for (int j = i; j > 0; j--) {
      stdout.write("* ");
    }
    stdout.write("\n");
  }

  print("\nThird Pattern");
  for (int i = 0; i < 5; i++) {
    // loop for space
    for (int k = 0; k < 2 * (5 - i); k++) {
      stdout.write(" ");
    }

    for (int j = 0; j < 2 * i + 1; j++) {
      stdout.write("* ");
    }
    stdout.write("\n");
  }

  print("\nFourth Pattern");
  for (int i = 0; i < 4; i++) {
    for (int k = 0; k < 2 * (4 - i); k++) {
      stdout.write(" ");
    }

    for (int j = 0; j < 2 * i + 1; j++) {
      stdout.write("* ");
    }
    stdout.write("\n");
  }
  for (int i = 4; i >= 0; i--) {
    for (int k = 2 * (4 - i); k > 0; k--) {
      stdout.write(" ");
    }

    for (int j = 2 * i + 1; j > 0; j--) {
      stdout.write("* ");
    }
    stdout.write("\n");
  }

  print("\nFifth Pattern");
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      if (i == 0 || i == 4 || j == 0 || j == 4) {
        stdout.write("*");
      } else {
        stdout.write(" ");
      }
    }
    stdout.write("\n");
  }

  // Another logic
  print("\nAnother Logic");
  String data = "";

  // Outer loop controls the number of rows
  for (int i = 0; i < 5; i++) {
    // Inner loop controls the number of stars per row
    for (int j = 0; j <= i; j++) {
      data += "*";
    }
    print(data); // Prints the accumulated stars
    data = ""; // Reset data to print the next row
  }
}
