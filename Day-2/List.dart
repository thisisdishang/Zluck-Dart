import 'dart:math';

void main() {
  Random r=Random();  
   // fixed length list
   var list = List<int>.filled(5,r.nextInt(10)+1);  
   print(list);  

   // growable list
   var list2=[78,98,65,1,2,45,7,65,64];
   print(list2[3]);
   print(list2.indexOf(2));
   print(list2.length);
   list2[2]=23;
   print(list2);

   list2.replaceRange(1, 3, [8,9,10]);
   print(list2);

   list2.forEach((n)=>print(n));

   var list3=[...list,...list2];
   print(list3);

   List<int> oddlist=list3.where((n)=>n.isOdd).toList();
   print(oddlist);

}