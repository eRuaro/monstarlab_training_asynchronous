import 'package:http/http.dart' as http;
import 'package:monstarlab_training_asynchronous/api_keys.dart';


class Networking {

  var _recommendedSongsUrl = Uri.parse("https://shazam.p.rapidapi.com/songs/list-recommendations?key=484129036");

  Future getRecommendedSongs() async {
    http.Response response = await http.get(_recommendedSongsUrl);
  }
  Future getSongs() async {
    http.Response response = await http.get(Uri.parse(headers['x-rapidapi-host']!));
  }
}