// Generic class
class Data<T> {
  T data;
  Data(this.data);
}

// Generic methods
T mymethod<T>(T value) {
  return value;
}

// Generic class with restriction
class Num<T extends num> {
  T data;
  Num(this.data);
}

// Generic method with restriction
double getPercentage<T extends num>(T marksObtaine, T total) {
  return (marksObtaine / total) * 100;
}

void main() {
  Data<num> numData = Data<num>(7);
  print("Num Data: ${numData.data}");

  Data<String> stringData = Data<String>("Ranaji");
  print("String Data: ${stringData.data}");

  Data<List<int>> listData = Data<List<int>>([15, 25, 6, 3]);
  print("List Data: ${listData.data}");

  print("Generics Int Method: ${mymethod<int>(5)}");
  print("Generics Double Method: ${mymethod<double>(10.6)}");
}
