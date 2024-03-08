import 'dart:io';

void main() {
  print("Enter Number: ");
  String input = stdin.readLineSync()!;
  int number1 = int.parse(input);

  print('Enter Operation :');
  String oper = stdin.readLineSync()!;

  print("Enter Another number: ");
  String input2 = stdin.readLineSync()!;
  int number2 = int.parse(input2);

  switch (oper) {
    case '+':
      print(number1 + number2);

    case '-':
      print(number1 - number2);

    case '*':
      print(number1 * number2);

    case '/':
      print(number1 / number2);
  }
}
