import 'dart:io';

void main() {
  print("Enter Grade: ");
  String input = stdin.readLineSync()!;
  int Grade = int.parse(input);

  switch (Grade) {
    case <= 100 && >= 90:
      print("A+");
      break;
    case <= 100 && >= 83:
      print("A");
      break;
    case < 83 && >= 80:
      print("A-");
      break;
    case < 80 && >= 75:
      print("B+");
      break;
    case < 75 && >= 70:
      print("B");
      break;
    case < 70 && >= 68:
      print("B-");
      break;
    case < 68 && >= 60:
      print("C+");
      break;
    case < 60 && >= 50:
      print("D");
      break;

    case < 50:
      print("F");
      break;
  }
}
