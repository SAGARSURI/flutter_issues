import 'package:network/src/http_client.dart';
import 'package:network/src/http_client_impl.dart';
import 'package:network/src/map_response.dart';

class HttpClientProvider {
  late HttpClient _client;
  HttpClientProvider() {
    _client = HttpClientImpl(
      baseUrl: "https://api.github.com/",
      mapResponse: mapResponse,
    );
  }

  HttpClient get getClient => _client;
}
