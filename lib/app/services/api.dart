import 'package:monstarlab_training_asynchronous/app/services/api_key.dart';

class API {
  API({required this.apiKey});

  final String apiKey;

  factory API.sandbox() => API(apiKey: APIKey.apiKey);

}
