import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  String userInput = stdin.readLineSync()!;

  try {
    int number = int.parse(userInput);
    print('Converted number: $number');
  } catch (e) {
    print('Invalid input. Please enter a valid number.');
  }
}
