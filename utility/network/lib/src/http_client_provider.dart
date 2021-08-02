import 'package:network/src/http_client.dart';
import 'package:network/src/http_client_impl.dart';
import 'package:network/src/map_response.dart';

class HttpClientProvider {
  HttpClientProvider._() {
    _client = HttpClientImpl(
      baseUrl: 'https://api.github.com/',
      mapResponse: mapResponse,
    );
  }
  late HttpClient _client;

  HttpClient get getClient => _client;

  static final HttpClientProvider instance = HttpClientProvider._();
}
