import 'dart:io';

void main(){
  // Write a dart program to add your name to “hello.txt” file.
  File f=new File("C:\\Users\\disha\\Downloads\\Zluck-Dart\\Day-2\\Task 4\\hello.txt");
  f.writeAsStringSync("Dishang");
  print("File written successfully");

  // Write a dart program to append your friends name to a file that already has your name.
  f.writeAsStringSync("\nHarshiv",mode: FileMode.append);
  print("Append successfully");

  // Write a dart program to get the current working directory.
  print("Current Working ${f.parent}");

  // Write a dart program to copy the “hello.txt” file to “hello_copy.txt” file.
  String content=f.readAsStringSync();
  File f2=new File("C:\\Users\\disha\\Downloads\\Zluck-Dart\\Day-2\\Task 4\\hello_copy.txt");
  f2.writeAsStringSync(content);
  print("File copy successfully");

  // Write a dart program to create 100 files using loop.
  // for (int i = 1; i <= 100; i++) {
  //   String fileName = "C:\\Users\\disha\\Downloads\\Zluck-Dart\\Day-2\\Task 4\\hello_$i.txt";
  //   File file = File(fileName);
  //   file.writeAsStringSync('This is file number $i.');
  //   print('Created file: $fileName');
  // }

  // Write a dart program to delete the file “hello_copy.txt”. Make sure you have created the file “hello_copy.txt.
  File df=new File("C:\\Users\\disha\\Downloads\\Zluck-Dart\\Day-2\\Task 4\\hello_copy.txt");
  df.deleteSync();
  print("File delete successfully");

  // Write a dart program to store name, age, and address of students in a csv file and read it.
  File file = File("C:\\Users\\disha\\Downloads\\Zluck-Dart\\Day-2\\Task 4\\students.csv");
  // file.writeAsStringSync('Name, age, address\n',mode: FileMode.append);
  for (int i = 0; i < 3; i++) {
    print("Enter name of student ${i + 1}: ");
    String? name = stdin.readLineSync();

    print("Enter age of student ${i + 1}: ");
    String? age = stdin.readLineSync();

    print("Enter address of student ${i + 1}: ");
    String? address = stdin.readLineSync();

    file.writeAsStringSync('$name,$age,$address\n', mode: FileMode.append);
  }
  print("Congratulations!! CSV file written successfully.");

  String csvcontent=file.readAsStringSync();
  print(csvcontent);

}