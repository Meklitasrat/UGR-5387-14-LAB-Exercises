import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>> fetchWeatherData(String city) async {
  String apiKey = 'YOUR_API_KEY';
  String apiUrl =
      'https://api.weatherapi.com/v1/current.json?key=$apiKey&q=$city';

  var response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    Map<String, dynamic> data = json.decode(response.body);
    return data;
  } else {
    throw Exception(
        'Failed to fetch weather data. Error: ${response.statusCode}');
  }
}

void main() async {
  String city = 'New York';

  try {
    Map<String, dynamic> weatherData = await fetchWeatherData(city);
    double temperature = weatherData['current']['temp_c'];
    String condition = weatherData['current']['condition']['text'];

    print('Current Weather in $city:');
    print('Temperature: $temperature°C');
    print('Condition: $condition');
  } catch (e) {
    print('Error: $e');
  }
}
