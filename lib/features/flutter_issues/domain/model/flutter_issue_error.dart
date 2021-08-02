import 'package:freezed_annotation/freezed_annotation.dart';

part 'flutter_issue_error.freezed.dart';

@freezed
class FlutterIssueError with _$FlutterIssueError {
  const factory FlutterIssueError.genericError() = GenericError;
  const factory FlutterIssueError.connectivityError() = ConnectivityError;
}
