void main() {
  // promoting from general types to specific subtypes
  Object o = 45;

  if (o is int) {
    print("Object is int type");
  }

  // Type Promotion With Nullable To Non-Nullable Type
  String? text;
  if (text == null) {
    //throw Exception("Text is null");
  }

  Person p = Person();
  p.name = "Eva";
  p.greet();

  print("Starting");
  // late variable
  // remove late keyword and check output
  late String value = provideCountry();
  print("End");
  print(value);
}

// late keyword
class Person {
  late String name;

  void greet() {
    print("Hello $name");
  }
}

// function
String provideCountry() {
  print("Function is called");
  return "Bharat";
}
