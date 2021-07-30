import 'package:http/http.dart';
import 'package:network/src/network_response.dart';
import 'package:network/src/response_error.dart';

NetworkResponse mapResponse(Response response) {
  if (response.statusCode >= 200 && response.statusCode < 300) {
    return NetworkResponse.success(response.body);
  } else {
    return NetworkResponse.error(
      ResponseError(
          statusCode: response.statusCode, exception: Exception(response.body)),
    );
  }
}
