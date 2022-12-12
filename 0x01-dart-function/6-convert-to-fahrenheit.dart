List<double> convertToF(List<double> temperaturesInC) {
  List<double> fahrenheit_temperature_list = [];
  for (double celsius_temperature in temperaturesInC) {
    double fahrenheit_temperature = ((9 / 5) * celsius_temperature) + 32; 
    fahrenheit_temperature_list.add(double.parse(fahrenheit_temperature.toStringAsFixed(2)));
  }
  return fahrenheit_temperature_list;
}
