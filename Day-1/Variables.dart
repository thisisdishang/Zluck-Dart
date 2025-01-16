void main(){
  var no=7;
  print(no);
  print(no.runtimeType);

  Object l="Dishang";
  print(l);
  print(l.runtimeType);

  l=7;
  print(l);
  print(l.runtimeType);

 dynamic k=4;
 print(k);

 k="Rana";
 print(k);

 // nullable variable
 int? num; 
 print(num); // default initialize value is null

 // non-nullable variable
 String hello;
 // print(hello); // this must be initialize

 int? linecount;
 assert(linecount==null);

 late String description;
 description="Hello";
 print(description);

 // final
 final lname="Rana"; // without declare type
 print(lname.runtimeType);

 final int number=90;
 print(number);


 // const
 const PI=3.14;
 print(PI.runtimeType);

 const Object i = 3; // Where i is a const Object with an int value...
 const list = [i as int]; // Use a typecast.
 const map = {if (i is int) i: 'int'}; // Use is and collection if.
 const set = {if (list is List<int>) ...list}; // ...and a spread.
 print(map);
 print(set);
}