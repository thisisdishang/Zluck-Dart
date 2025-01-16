import 'dart:io';

void main(){
  File f=new File("C:\\Users\\disha\\Downloads\\Zluck-Dart\\Day-2\\myfile2.txt");
  
  if(f.existsSync()){
    f.deleteSync();
    print('File Deleted...');
  }
  else{
    print('File is not exist');
  }
}