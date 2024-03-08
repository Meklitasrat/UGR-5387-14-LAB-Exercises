import 'dart:io';

void readFileFromDisk(String filePath) {
  try {
    File file = File(filePath);
    List<String> lines = file.readAsLinesSync();
    print('File contents:');
    for (String line in lines) {
      print(line);
    }
  } catch (e) {
    if (e is FileSystemException) {
      print('Error: ${e.message}');
    } else {
      print('An error occurred while reading the file: $e');
    }
  }
}

void main() {
  String filePath = 'path/to/file.txt';
  readFileFromDisk(filePath);
}
