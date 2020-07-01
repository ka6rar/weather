


import 'package:flutter/foundation.dart';

class WeatherModel {


    double get getTemp => temp-272.5;
    double get getMaxTemp => temp_max-272.5;
    double get getMinTemp => temp_min-272.5;

    final temp ;
    final pressure ;
    final humidty ;
    final temp_max ;
    final temp_min ;

  WeatherModel(this.temp, this.pressure, this.humidty, this.temp_max, this.temp_min);

 factory WeatherModel.fromJson(Map<String , dynamic> json ){
   return WeatherModel(
     json['temp'],
     json['pressure'] ,
     json['humidty'] ,
     json['temp_max'] ,
     json['temp_min'] ,
   );
 }

}