import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:network/src/response_error.dart';

part 'network_response.freezed.dart';

@freezed
class NetworkResponse with _$NetworkResponse {
  const factory NetworkResponse.success(String body) = Success;
  const factory NetworkResponse.error(ResponseError exception) = Error;
}
