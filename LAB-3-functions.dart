import 'dart:io';

void main() {
  print("Enter the Your Word: ");
  String words = stdin.readLineSync()!;

  List arr = words.split('');
  print(arr);

  List Wordd = arr.reversed.toList();
  print(Wordd);

  String reversed = Wordd.join('');
  print(reversed);
}
