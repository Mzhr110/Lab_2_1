import 'dart:async';

void main() async {
  print('Fetching weather data...');

  try {
    String weather = await fetchWeatherData();
    print('Weather Data: $weather');
  } catch (e) {
    print('Error: $e');
  }
}

Future<String> fetchWeatherData() async {
  await Future.delayed(Duration(seconds: 3));

  bool success = true;
  if (success) {
    return 'Sunny, 25°C';
  } else {
    throw Exception('Failed to fetch weather data');
  }
}
