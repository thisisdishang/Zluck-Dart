// Default Construcotr in Dart
class Person {
  String? name, planet;

  Person() {
    print("Default Construtor in Called");
    planet = "Earth";
  }
}

void main() {
  Person person = Person();
  person.name = "Jarvis";

  print(person.name);
  print(person.planet);
}
