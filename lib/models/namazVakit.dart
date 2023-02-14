///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class NamazTimes {
/*
{
  "2023-02-15": [
    "06:11"
  ],
  "2023-02-16": [
    "06:10"
  ],
  "2023-02-17": [
    "06:09"
  ]
} 
*/

  List<String?>? the20230215;
  List<String?>? the20230216;
  List<String?>? the20230217;

  NamazTimes({
    this.the20230215,
    this.the20230216,
    this.the20230217,
  });
  NamazTimes.fromJson(Map<String, dynamic> json) {
    if (json['2023-02-15'] != null) {
      final v = json['2023-02-15'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      the20230215 = arr0;
    }
    if (json['2023-02-16'] != null) {
      final v = json['2023-02-16'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      the20230216 = arr0;
    }
    if (json['2023-02-17'] != null) {
      final v = json['2023-02-17'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      the20230217 = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (the20230215 != null) {
      final v = the20230215;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['2023-02-15'] = arr0;
    }
    if (the20230216 != null) {
      final v = the20230216;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['2023-02-16'] = arr0;
    }
    if (the20230217 != null) {
      final v = the20230217;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['2023-02-17'] = arr0;
    }
    return data;
  }
}

class NamazPlace {
/*
{
  "countryCode": "TR",
  "country": "Turkey",
  "region": "Ankara",
  "city": "Ankara",
  "latitude": 39.91987,
  "longitude": 32.85427
} 
*/

  String? countryCode;
  String? country;
  String? region;
  String? city;
  double? latitude;
  double? longitude;

  NamazPlace({
    this.countryCode,
    this.country,
    this.region,
    this.city,
    this.latitude,
    this.longitude,
  });
  NamazPlace.fromJson(Map<String, dynamic> json) {
    countryCode = json['countryCode']?.toString();
    country = json['country']?.toString();
    region = json['region']?.toString();
    city = json['city']?.toString();
    latitude = json['latitude']?.toDouble();
    longitude = json['longitude']?.toDouble();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['countryCode'] = countryCode;
    data['country'] = country;
    data['region'] = region;
    data['city'] = city;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }
}

class Namaz {
/*
{
  "place": {
    "countryCode": "TR",
    "country": "Turkey",
    "region": "Ankara",
    "city": "Ankara",
    "latitude": 39.91987,
    "longitude": 32.85427
  },
  "times": {
    "2023-02-15": [
      "06:11"
    ],
    "2023-02-16": [
      "06:10"
    ],
    "2023-02-17": [
      "06:09"
    ]
  }
} 
*/

  NamazPlace? place;
  NamazTimes? times;

  Namaz({
    this.place,
    this.times,
  });
  Namaz.fromJson(Map<String, dynamic> json) {
    place = (json['place'] != null) ? NamazPlace.fromJson(json['place']) : null;
    times = (json['times'] != null) ? NamazTimes.fromJson(json['times']) : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (place != null) {
      data['place'] = place!.toJson();
    }
    if (times != null) {
      data['times'] = times!.toJson();
    }
    return data;
  }
}