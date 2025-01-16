import 'dart:io';

void  main(){
  File f=new File("C:\\Users\\disha\\Downloads\\Zluck-Dart\\Day-2\\myfile.txt");
  f.writeAsStringSync('Beyond the belief');
  print('File written successfully');

  f.writeAsStringSync('\nNever ending story',mode:FileMode.append);
  print('File again written successfully');
}