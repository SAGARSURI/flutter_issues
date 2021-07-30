import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:network/src/network_response.dart';

import 'http_client.dart';

class HttpClientImpl implements HttpClient {
  final String baseUrl;
  final NetworkResponse Function(Response) mapResponse;

  final _header = {
    "Authorization": "Bearer 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",
    'Content-Type': 'application/json'
  };

  HttpClientImpl({required this.baseUrl, required this.mapResponse});

  @override
  Future<NetworkResponse> post(String path, dynamic body) async {
    Response response = await http.post(Uri.parse(baseUrl + path),
        body: jsonEncode(body), headers: _header);
    return mapResponse(response);
  }

  @override
  Future<NetworkResponse> get(String path) async {
    Response response =
        await http.get(Uri.parse(baseUrl + path), headers: _header);
    return mapResponse(response);
  }
}
