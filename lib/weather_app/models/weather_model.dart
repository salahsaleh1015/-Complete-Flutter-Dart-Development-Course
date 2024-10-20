class WeatherModel {
  final String cityName;
  final String? image;
  final double temp;
  final double minTemp;
  final double maxTemp;
  final String date;
  final String weatherCondition;

  WeatherModel(
      {required this.cityName,
      this.image,
      required this.temp,
      required this.minTemp,
      required this.maxTemp,
      required this.date,
      required this.weatherCondition});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      date: json['current']['last_updated'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherCondition: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
    );
  }
}