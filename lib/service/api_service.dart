import 'dart:convert';

import 'package:namaz_vakti/models/namazVakit.dart';
import 'package:http/http.dart' as http;

class UserService {
  Future<Namaz?> getVakit() async {
    var now = DateTime.now();
    String url =
        "https://namaz-vakti.vercel.app/api/timesFromPlace?country=Turkey&region=Van&city=Van&date=2023-02-14&days=1000&timezoneOffset=180";
    var res = await http.get(Uri.parse(url));
    if (res.body.isNotEmpty) {
      var jsonBody = Namaz.fromJson(jsonDecode(res.body));
      return jsonBody;
    }
    return null;
  }
}
