import 'package:http/http.dart' as http;

class Networking {
  Map<String, String> _headers = {
    "x-rapidapi-key": "79cea3149emshe7cff09ba0dcd65p1ac7dejsn9697c25e50fd",
    "x-rapidapi-host": "shazam.p.rapidapi.com",
  };

  var _recommendedSongsUrl = Uri.parse("https://shazam.p.rapidapi.com/songs/list-recommendations?key=484129036");

  Future getRecommendedSongs() async {
    http.Response response = await http.get(_recommendedSongsUrl);
  }
  Future getSongs() async {
    http.Response response = await http.get(Uri.parse(_headers['x-rapidapi-host']!));
  }
}