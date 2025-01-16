import 'dart:math';

void main(){
  Random random=new Random();
  int randomNumber=random.nextInt(10);
  print('Random number between 0 to 9 $randomNumber');

  List<int> randomList = List.generate(10, (_) => Random().nextInt(100)+1); 
  print(randomList);

  print("Power is ${pow(2, 3)}"); 
  print("Maximum is ${max(5, 6)}"); 
  print("Minimum is ${min(8, 9)}"); 
  print("Square root is ${sqrt(25)}"); 
}