import 'dart:io';

void mian(){
  print("Enter Number : ");
  String input = stdin.readLineSync()!;
  int number = int.parse(input);
  if(number%2==0){
    print("The number $number is an even number.");
  }
  else(){
    print("The number $number is odd. ");
  };
}