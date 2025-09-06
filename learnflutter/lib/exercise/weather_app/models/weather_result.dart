class WeatherDataResult {
  List<WeatherObject>? weather;
  String? base;
  WeatherMainObject? main;
  int? visibility;
  WindObject? wind;
  CloudsObject? clouds;
  int? dt;
  SysObject? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;
  WeatherDataResult({
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });

  Map<String, dynamic> toMap() {
    return {
      'weather': weather?.map((x) => x.toMap()).toList(),
      'base': base,
      'main': main?.toMap(),
      'visibility': visibility,
      'wind': wind?.toMap(),
      'clouds': clouds?.toMap(),
      'dt': dt,
      'sys': sys?.toMap(),
      'timezone': timezone,
      'id': id,
      'name': name,
      'cod': cod,
    };
  }

  factory WeatherDataResult.fromMap(Map<String, dynamic> map) {
    return WeatherDataResult(
      weather: List<WeatherObject>.from(
        map['weather']?.map((x) => WeatherObject.fromMap(x)),
      ),
      base: map['base'],
      main: WeatherMainObject.fromMap(map['main']),
      visibility: map['visibility'],
      wind: WindObject.fromMap(map['wind']),
      clouds: CloudsObject.fromMap(map['clouds']),
      dt: map['dt'],
      sys: SysObject.fromMap(map['sys']),
      timezone: map['timezone'],
      id: map['id'],
      name: map['name'],
      cod: map['cod'],
    );
  }
}

class WeatherObject {
  int? id;
  String? main;
  String? description;
  String? icon;

  WeatherObject({this.id, this.main, this.description, this.icon});

  Map<String, dynamic> toMap() {
    return {'id': id, 'main': main, 'description': description, 'icon': icon};
  }

  factory WeatherObject.fromMap(Map<String, dynamic> map) {
    return WeatherObject(
      id: map['id'],
      main: map['main'],
      description: map['description'],
      icon: map['icon'],
    );
  }
}

class WeatherMainObject {
  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? humidity;
  int? seaLevel;
  int? grndLevel;

  WeatherMainObject({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
    this.seaLevel,
    this.grndLevel,
  });

  Map<String, dynamic> toMap() {
    return {
      'temp': temp,
      'feels_like': feelsLike,
      'temp_min': tempMin,
      'temp_max': tempMax,
      'pressure': pressure,
      'humidity': humidity,
      'sea_level': seaLevel,
      'grnd_level': grndLevel,
    };
  }

  factory WeatherMainObject.fromMap(Map<String, dynamic> map) {
    return WeatherMainObject(
      temp: map['temp'],
      feelsLike: map['feels_like'],
      tempMin: map['temp_min'],
      tempMax: map['temp_max'],
      pressure: map['pressure'],
      humidity: map['humidity'],
      seaLevel: map['sea_level'],
      grndLevel: map['grnd_level'],
    );
  }
}

class WindObject {
  int? speed;
  int? deg;
  double? gust;

  WindObject({this.speed, this.deg, this.gust});

  Map<String, dynamic> toMap() {
    return {'speed': speed, 'deg': deg, 'gust': gust};
  }

  factory WindObject.fromMap(Map<String, dynamic> map) {
    return WindObject(speed: map['speed'], deg: map['deg'], gust: map['gust']);
  }
}

class CloudsObject {
  int? all;

  CloudsObject({this.all});

  Map<String, dynamic> toMap() {
    return {'all': all};
  }

  factory CloudsObject.fromMap(Map<String, dynamic> map) {
    return CloudsObject(all: map['all']);
  }
}

class SysObject {
  String? country;
  int? sunrise;
  int? sunset;

  SysObject({this.country, this.sunrise, this.sunset});

  Map<String, dynamic> toMap() {
    return {'country': country, 'sunrise': sunrise, 'sunset': sunset};
  }

  factory SysObject.fromMap(Map<String, dynamic> map) {
    return SysObject(
      country: map['country'],
      sunrise: map['sunrise'],
      sunset: map['sunset'],
    );
  }
}

/*
{
  "coord": {
    "lon": 10.99,
    "lat": 44.34
  },
  "weather": [
    {
      "id": 804,
      "main": "Clouds",
      "description": "overcast clouds",
      "icon": "04d"
    }
  ],
  "base": "stations",
  "main": {
    "temp": 292.59,
    "feels_like": 292.42,
    "temp_min": 292.59,
    "temp_max": 292.59,
    "pressure": 1015,
    "humidity": 70,
    "sea_level": 1015,
    "grnd_level": 949
  },
  "visibility": 10000,
  "wind": {
    "speed": 1.2,
    "deg": 184,
    "gust": 1.77
  },
  "clouds": {
    "all": 96
  },
  "dt": 1756887855,
  "sys": {
    "country": "IT",
    "sunrise": 1756874480,
    "sunset": 1756921794
  },
  "timezone": 7200,
  "id": 3163858,
  "name": "Zocca",
  "cod": 200
}
 */
