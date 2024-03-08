import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var file = File(savePath);
    await file.writeAsBytes(response.bodyBytes);
    print('File downloaded successfully.');
  } else {
    print('Failed to download file. Error: ${response.statusCode}');
  }
}

void main() async {
  String fileUrl = 'https://example.com/file.pdf';
  String savePath = 'path/to/save/file.pdf';

  await downloadFile(fileUrl, savePath);
}
