void main() {
  DateTime datetime = DateTime.now();
  // Convert Datetime To String
  print("Year is " + datetime.year.toString());
  print("Month is " + datetime.month.toString());
  print("Hour is " + datetime.hour.toString());
  print("Minutes is " + datetime.minute.toString());
  print("Second is " + datetime.second.toString());

  // If you don't want to use .toString()
  print("Day is ${datetime.day}");

  // Convert String To DateTime
  String myDateInString = "1996-04-22";
  DateTime myConvertedDate = DateTime.parse(myDateInString);
  print(myConvertedDate);

  myConvertedDate = myConvertedDate.add(Duration(days: 1));
  print(myConvertedDate);

  myConvertedDate = myConvertedDate.subtract(Duration(days: 1));
  print(myConvertedDate);

  Duration diff = datetime.difference(myConvertedDate);
  print(diff.inDays);
}
