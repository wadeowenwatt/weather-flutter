import 'weather.dart';

class Current {
  Current({
      this.dt, 
      this.sunrise, 
      this.sunset, 
      this.temp, 
      this.feelsLike, 
      this.pressure, 
      this.humidity, 
      this.dewPoint, 
      this.uvi, 
      this.clouds, 
      this.visibility, 
      this.windSpeed, 
      this.windDeg, 
      this.windGust, 
      this.weather,});

  Current.fromJson(dynamic json) {
    dt = json['dt'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    temp = json['temp'];
    feelsLike = json['feels_like'];
    pressure = json['pressure'];
    humidity = json['humidity'];
    dewPoint = json['dew_point'];
    uvi = json['uvi'];
    clouds = json['clouds'];
    visibility = json['visibility'];
    windSpeed = json['wind_speed'];
    windDeg = json['wind_deg'];
    windGust = json['wind_gust'];
    if (json['weather'] != null) {
      weather = [];
      json['weather'].forEach((v) {
        weather.add(Weather.fromJson(v));
      });
    }
  }
  int dt;
  int sunrise;
  int sunset;
  double temp;
  double feelsLike;
  int pressure;
  int humidity;
  double dewPoint;
  int uvi;
  int clouds;
  int visibility;
  double windSpeed;
  int windDeg;
  double windGust;
  List<Weather> weather;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = dt;
    map['sunrise'] = sunrise;
    map['sunset'] = sunset;
    map['temp'] = temp;
    map['feels_like'] = feelsLike;
    map['pressure'] = pressure;
    map['humidity'] = humidity;
    map['dew_point'] = dewPoint;
    map['uvi'] = uvi;
    map['clouds'] = clouds;
    map['visibility'] = visibility;
    map['wind_speed'] = windSpeed;
    map['wind_deg'] = windDeg;
    map['wind_gust'] = windGust;
    if (weather != null) {
      map['weather'] = weather.map((v) => v.toJson()).toList();
    }
    return map;
  }

}