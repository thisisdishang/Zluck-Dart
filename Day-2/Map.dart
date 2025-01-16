void main(){
  Map<int,String> student={1:"Lucifer",2:"Alice",3:"Rayon"};
  print(student);
  print(student[3]);
  print("All keys: ${student.keys}");
  print("All values: ${student.values}");
  print("Length: ${student.length}");
  student[4]="Keir";
  print(student);
  print(student.keys.toList());
  print(student.values.toList());

  print(student.containsKey(3));

  student.remove(4);
  print(student);

  for (MapEntry i in student.entries) {
    print("Key: ${i.key}, Value: ${i.value}");
  }

  student.forEach((key,value)=>print("$key $value"));
}