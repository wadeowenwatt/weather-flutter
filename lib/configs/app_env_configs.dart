enum Environment {
  dev,
  stg,
  prod,
}

extension EnvironmentExt on Environment {
  String get envName {
    switch (this) {
      case Environment.dev:
        return 'LOCAL';
      case Environment.stg:
        return 'STAGING';
      case Environment.prod:
        return 'PROD';
    }
  }

  String get baseUrl {
    switch (this) {
      case Environment.dev:
        return "http://api.openweathermap.org";
      case Environment.stg:
        return "http://api.openweathermap.org";
      case Environment.prod:
        return "http://api.openweathermap.org";
    }
  }
}
