import 'dart:io';

void main() {
  int speedOfLight = 299792458;

  print('Enter the distance in meters: ');
  String input = stdin.readLineSync()!;

  double distance = double.parse(input);

  double time = distance / speedOfLight;

  print("Time taken for light to travel $distance meters: $time seconds");
}
