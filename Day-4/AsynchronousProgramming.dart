void main() async {
  print("First Process");
  Future.delayed(Duration(seconds: 3), () => print("Second Computed"));
  print("Third Process");
  print("Fourth Process");
  getName().then((value) => print(value));
  getData();

  await for (String city in cityName()) {
    print(city);
  }

  await for (String c in getChar()) {
    print(c);
  }
  str(10).forEach(print);
}

// Future
Future<String> getName() async {
  return Future.delayed(Duration(seconds: 2), () => "Hello");
}

Future<String> middle() {
  return Future.delayed(Duration(seconds: 2), () => "World");
}

// async and await
void getData() async {
  String data = await middle();
  print(data);
}

// Stream
Stream<String> cityName() async* {
  await Future.delayed(Duration(seconds: 2));
  yield "Surat";

  await Future.delayed(Duration(seconds: 2));
  yield "Vadodara";

  await Future.delayed(Duration(seconds: 2));
  yield "Ahmedabad";
}

Stream<String> getChar() {
  return Stream.fromIterable(['A', 'B', 'C', 'D']);
}

Stream<int> str(int n) async* {
  if (n > 0) {
    await Future.delayed(Duration(seconds: 2));
    yield n;
    yield* str(n - 2);
  }
}
