import 'dart:io';
import 'dart:math';

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }
  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

List<int> findPrimes(int start, int end) {
  List<int> primes = [];
  for (int number = start; number <= end; number++) {
    if (isPrime(number)) {
      primes.add(number);
    }
  }
  return primes;
}

void main() {
  print("Enter the Strating Number: ");
  String input1 = stdin.readLineSync()!;
  int start = int.parse(input1);

  print("Enter the Ending Number: ");
  String input2 = stdin.readLineSync()!;
  int end = int.parse(input2);

  List<int> primeNumbers = findPrimes(start, end);
  print('Prime numbers between $start and $end: $primeNumbers');
}
