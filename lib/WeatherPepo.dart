import 'WeatherModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


Future<WeatherModel>  getWeather(String city) async {

    final resul = await http.Client().get('https://samples.openweathermap.org/data/2.5/weather?q=$city,uk&callback=test&appid=cef0fdd91edd705c4171e7dec2f8ebf1');

    if (resul.statusCode == 200 ) {
      
      throw Exception();
    }



      WeatherModel parsedJsin(final response) {
   
        final jsonDecod = json.decode(response);
        final jsonWather = jsonDecod('main');
        return WeatherModel.fromJson(jsonWather);
 
  }

  }


