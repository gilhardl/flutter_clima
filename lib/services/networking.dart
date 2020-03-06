import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkingHelper {
  NetworkingHelper({this.url});

  final String url;

  Future getData() async {
    http.Response res = await http.get(url);

    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      print('HTTP ${res.statusCode} ERROR : ${jsonDecode(res.body)}');
    }
  }
}
