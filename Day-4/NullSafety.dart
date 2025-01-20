void main() {
  // Declaring a nullable variable by using ?
  String? name;

  // Assigning John to name
  name = "Demon";

  // Assigning null to name
  name = null;

  // Checking if name is null using if statement
  if (name == null) {
    print("Name is null");
  }

  // Using ?? operator to assign a default value
  String name1 = name ?? "Conman";
  print(name1);

  // Using ! operator to return null if name is null
  //String name2 = name!;
  //print(name2);

  // Define list of nullable items
  List<int?> item = [3, 5, 2, null];
  print(item);

  getAddress("Ranawad");
}

// Function with nullable parameter
void getAddress(String? address) {
  print(address);
}
