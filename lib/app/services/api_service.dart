import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:monstarlab_training_asynchronous/app/services/api.dart';
import 'package:monstarlab_training_asynchronous/app/services/api_key.dart';

class APIService {
  final API api;

  const APIService({required this.api});

  static final String _host = "shazam.p.rapidapi.com";
  static final String _url =
      "https://shazam.p.rapidapi.com/songs/list-recommendations?key=484129036";

  Future<int> getData() async {
    final response = await http.get(Uri.parse(_url), headers: {
      "x-rapidapi-key": APIKey.apiKey,
      "x-rapidapi-host": _host,
    });

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      return response.statusCode;
    }

    throw response;
  }
}
