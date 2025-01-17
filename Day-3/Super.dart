class A {
  void show() {
    print("A show method");
  }
}

class B extends A {
  void show() {
    super.show(); // Calling the show method of the parent class
    print("B show method");
  }
}

void main() {
  B ob = B();
  ob.show();
}
