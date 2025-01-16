import 'dart:io';

void main(){
  File f=new File("C:\\Users\\disha\\Downloads\\Zluck-Dart\\Day-2\\myfile.txt");
  String content=f.readAsStringSync();
  print(content);
  
  // get file location
  print('File path: ${f.path}');
  // get absolute path
  print('File absolute path: ${f.absolute.path}');
  // get file size
  print('File size: ${f.lengthSync()} bytes');
  // get last modified time
  print('Last modified: ${f.lastModifiedSync()}');

  File csv=new File("C:\\Users\\disha\\Downloads\\Zluck-Dart\\Day-2\\test.csv");
  String content2=csv.readAsStringSync();
  List<String> lines=content2.split("\n");
  print('---------------------');
  for (var line in lines) {
    print(line);
  }

  String specific=f.readAsStringSync().substring(1,11);
  print(specific);
}