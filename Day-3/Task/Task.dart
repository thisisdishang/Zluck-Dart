// Write a dart program to create a class Laptop with properties [id, name, ram]
// and create 3 objects of it and print all details.
class Laptop {
  int? id, ram;
  String? name;

  void display() {
    print("Laptop Id: $id");
    print("Laptop Name: $name");
    print("Laptop RAM: $ram");
  }
}

// Write a dart program to create a class House with properties [id, name, price].
// Create a constructor of it and create 3 objects of it. Add them to the list and print all details
class House {
  int? id, price;
  String? name;

  House(this.id, this.name, this.price);
}

// Write a dart program to create an enum class for gender [male, female, others] and print all values.
enum gender { Male, Female, Other }

// Write a dart program to create a class Animal with properties [id, name, color].
// Create another classcalled Cat and extends it from Animal.
// Add new properties sound in String. Create an object of a Cat and print all details.
class Animal {
  int? id;
  String? name, color;
}

class Cat extends Animal {
  String? sound;
}

// Write a dart program to create a class Camera with private properties [id, brand, color, price].
// Create a getter and setter to get and set values. Also, create 3 objects of it and print all details.
class Camera {
  int? _id, _price;
  String? _brand, _color;

  int get id => this._id!;
  int get price => this._price!;
  String get brand => this._brand!;
  String get color => this._color!;

  set id(int id) => this._id = id;
  set price(int price) => this._price = price;
  set brand(String brand) => this._brand = brand;
  set color(String color) => this._color = color;
}

// Create an interface called Bottle and add a method to it called open(). Create a class called CokeBottle and implement the Bottle and
// print the message “Coke bottle is opened”. Add a factory constructor to Bottle and return the object of CokeBottle.
// Instantiate CokeBottle using the factory constructor and call the open() on the object.
abstract class Bottle {
  void open();

  factory Bottle() {
    return CokeBottle();
  }
}

class CokeBottle implements Bottle {
  @override
  void open() {
    print("Coke bottle is opened");
  }
}

void main() {
  Laptop l1 = Laptop();
  l1.id = 101;
  l1.name = "HP";
  l1.ram = 8;
  l1.display();

  Laptop l2 = Laptop();
  l2.id = 102;
  l2.name = "Dell";
  l2.ram = 4;
  l2.display();

  Laptop l3 = Laptop();
  l3.id = 103;
  l3.name = "Asus";
  l3.ram = 16;
  l3.display();

  var list = [];
  House h1 = House(201, 'A', 1500000);
  list.add(h1.id);
  list.add(h1.name);
  list.add(h1.price);

  House h2 = House(202, 'B', 2500000);
  list.add(h2.id);
  list.add(h2.name);
  list.add(h2.price);

  House h3 = House(203, 'C', 1500000);
  list.add(h3.id);
  list.add(h3.name);
  list.add(h3.price);
  print(list);

  print(gender.values);

  Cat c1 = Cat();
  c1.sound = "Meowww";
  c1.color = "Black";
  c1.name = "Kelly";
  c1.id = 450;

  print("Cat Id: ${c1.name}");
  print("Cat Name: ${c1.id}");
  print("Cat Color: ${c1.color}");
  print("Cat Sound: ${c1.sound}");

  Camera o1 = Camera();
  o1.id = 101;
  o1.brand = "Canon";
  o1.color = "Black";
  o1.price = 15000;

  print(o1.id);
  print(o1.brand);
  print(o1.color);
  print(o1.price);

  Camera o2 = Camera();
  o2.id = 102;
  o2.brand = "Nikon";
  o2.color = "Greay";
  o2.price = 10000;

  print(o2.id);
  print(o2.brand);
  print(o2.color);
  print(o2.price);

  Camera o3 = Camera();
  o3.id = 103;
  o3.brand = "Sony";
  o3.color = "White";
  o3.price = 20000;

  print(o3.id);
  print(o3.brand);
  print(o3.color);
  print(o3.price);

  Bottle bottle = Bottle();
  bottle.open();
}
