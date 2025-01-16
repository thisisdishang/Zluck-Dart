import 'dart:io';

void main(){
  Set<String> color={"Red","Blue","Green"};
  print(color.runtimeType);
  print(color);

  print(color.first);
  print(color.last);
  print(color.isEmpty);
  print(color.isNotEmpty);
  print(color.length);
  print(color.contains("Red"));

  color.add("White");
  color.remove("Red");
  color.addAll({'Red','Yellow'});
  print(color);

  for (var element in color) {
    print(element);
  }

  Set<String> fruits1 = {"Apple", "Orange", "Mango"};
  Set<String> fruits2 = {"Apple", "Grapes", "Banana"};

  final differenceSet = fruits2.difference(fruits1);

  print(differenceSet);
  print(fruits1.intersection(fruits2));

  print(color.elementAt(2));
}