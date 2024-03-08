import 'dart:math';

void main() {
  List<int> randomNumbers = generateRandomNumbers(10);
  print('Random Numbers: $randomNumbers');

  Set<int> uniqueNumbers = Set<int>.from(randomNumbers);
  print('Unique Numbers: $uniqueNumbers');
}

List<int> generateRandomNumbers(int count) {
  Random random = Random();
  List<int> numbers = [];

  for (int i = 0; i < count; i++) {
    int randomNumber = random.nextInt(100);
    numbers.add(randomNumber);
  }

  return numbers;
}
