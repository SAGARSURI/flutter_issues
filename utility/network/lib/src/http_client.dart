import 'package:network/src/network_response.dart';

abstract class HttpClient {
  Future<NetworkResponse> post(String path, dynamic body);

  Future<NetworkResponse> get(String path);
}
