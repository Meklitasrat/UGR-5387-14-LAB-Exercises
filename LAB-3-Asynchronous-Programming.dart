import 'dart:async';

Future<List<String>> fetchDataFromDatabase() async {
  // Simulating a database query with a delay of 2 seconds
  await Future.delayed(Duration(seconds: 2));

  // Simulating retrieved data from the database
  List<String> data = ['John', 'Alice', 'Bob', 'Lisa'];

  return data;
}

void main() async {
  print('Loading data from the database...');
  List<String> result = await fetchDataFromDatabase();
  print('Data loaded: $result');
}
