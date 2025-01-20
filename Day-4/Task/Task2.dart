import 'dart:io';

void main() async {
  // Write a program to print current time after 2 seconds using Future.delayed().
  Future.delayed(
    Duration(seconds: 2),
    () => print("Current Time : ${DateTime.now()}"),
  );

  // Write a program in dart that reads csv file and print it’s content.
  File csv =
      new File("C:\\Users\\disha\\Downloads\\Zluck-Dart\\Day-2\\test.csv");
  String content = csv.readAsStringSync();
  print(content);

  var results = await Future.wait(
      [operations(2, "Task1"), operations(3, "Task2"), operations(1, "Task3")]);

  print(results);

  int sumoftwo = await sum(4, 5);
  print("Sum of two number: $sumoftwo");

  // Write a Dart program that takes in two integers as input, waits for 3 seconds, and then prints the sum of the two numbers.
  print(await sum(2, 4));

  List<String> city = ["Surat", "Ahmedabad", "Vad6odara"];
  List<String> sortedList = await sortList(city);
  print(sortedList);

  List<int> num = [8, 2, 1, 8, 9];
  List<int> multiplyList = await multiply(num);
  print(multiplyList);

  String s1 = await reverseString("We make it happens");
  print(s1);
}

// Write a program in dart that uses Future class to perform multiple asynchronous operations,
// wait for all of them to complete, and then print the results.
Future<String> operations(int seconds, String s) {
  return Future.delayed(Duration(seconds: seconds), () => s);
}

// Write a Dart program to calculate the sum of two numbers using async/await.
Future<int> sum(int a, int b) {
  return Future.delayed(Duration(seconds: 3), () => a + b);
}

// Write a Dart program that takes a list of strings as input, sorts the list asynchronously, and then prints the sorted list.
Future<List<String>> sortList(List<String> list) async {
  await Future.delayed(Duration(seconds: 2));
  list.sort();
  return list;
}

// Write a Dart program that takes a list of integers as input, multiplies each integer by 2 asynchronously, and then prints the modified list.
Future<List<int>> multiply(List<int> list) async {
  await Future.delayed(Duration(seconds: 1));
  return list.map((n) => n * 2).toList();
}

// Write a Dart program that takes a string as input, reverses the string asynchronously, and then prints the reversed string.
Future<String> reverseString(String s) async {
  await Future.delayed(Duration(seconds: 2));
  return s.split('').reversed.join();
}
