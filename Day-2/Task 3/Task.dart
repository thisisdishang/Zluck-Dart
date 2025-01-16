import 'dart:io';

void main(){
  // Create a list of names and print all names using list.
  List<String> name=["Alpha","Beta","Gamma","Delta"];
  print(name);

  // Create a set of fruits and print all fruits using loop.
  Set<String> fruits={"Apple","Banana","Kiwi","Mangoe"};
  for (var i in fruits) {
    print(i);
  }

  // Create a program thats reads list of expenses amount using user input and print total.
  // List<int> expense=[];
  // print("Enter the no. of expense: ");
  // int n=int.parse(stdin.readLineSync()!);

  // for(int i=1;i<=n;i++){
  //   print("Enter the expense $i amount: ");
  //   int amouunt=int.parse(stdin.readLineSync()!);
  //   expense.add(amouunt);
  // }

  // int total=expense.reduce((value,element)=>value+element);
  // print('Total expense: $total');

  // Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
  List<String> days=[];
  days.addAll(["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]);
  print(days);

  // Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.
  List<String> friend=["Ankit","Sunil","Gautam","Alis","Harsh","Harshiv","Sahil"];
  print(friend.where((i)=>i.toLowerCase().startsWith('a')));

  // Create a map with name, address, age, country keys and store values to it.
  // Update country name to other country and print all keys and values.
  Map<String,String> mymap={"name":"Jarvis","address":"Los Angles","age":"52","country":"USA"};
  print(mymap);
  mymap["country"]="Europe";
  print(mymap);

  // Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
  Map<String,int> m={"Alice":4545124,"Eva":45712,"Zeba":4547,"Karl":54212};
  print(m.keys.where((i)=>i.length==4));

  // Create a simple to-do application that allows user to add, remove, and view their task.
  List<String> tasks = [];

  while (true) {
    print('\nTo-Do Application');
    print('1. Add Task');
    print('2. Remove Task');
    print('3. View Tasks');
    print('4. Exit');

    print('Enter your choice: ');
    
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        // Add task
       print('Enter the task to add: ');
        String? task = stdin.readLineSync();
        tasks.add(task!);
        print('Task added successfully!');
        break;

      case '2':
        // Remove task
        if (tasks.isEmpty) {
          print('No tasks to remove!');
        } else{
          print('Task List:-');
          for (int i = 0; i < tasks.length; i++) {
            print('${tasks[i]}');
          }

          print('Enter task name to remove: ');
          String? taskname = stdin.readLineSync();
          tasks.remove(taskname);
          print('Task removed successfully!');
        }
        break;

      case '3':
        // View tasks
          print('Your tasks:');
          for (int i = 0; i < tasks.length; i++) {
            print('${tasks[i]}');
          }
        break;

      case '4':
        // Exit
        print('You choose to exit!');
        return;

      default:
        print('Invalid choice! Please select a valid option.');
        break;
    }
  }
}