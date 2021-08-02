import 'dart:io';

import 'package:flutter_issues/features/flutter_issues/data/model/json_flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue_error.dart';
import 'package:flutter_issues/features/flutter_issues/domain/repository/flutter_issue_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:network/network.dart';

class FlutterIssueRepositoryImpl implements FlutterIssueRepository {
  FlutterIssueRepositoryImpl(
    this._client,
    this._mapJsonFlutterIssues,
  );

  final HttpClient _client;
  final List<FlutterIssue> Function(List<JsonFlutterIssue>)
      _mapJsonFlutterIssues;

  @override
  Future<Either<FlutterIssueError, List<FlutterIssue>>> issues(
      {required String sort,
      required String state,
      required int page,
      List<String> label = const []}) async {
    try {
      final response = await _client.get(
          'repos/flutter/flutter/issues?state=$state&labels=${label.join(',')}&sort=$sort&page=$page');
      return response.when(success: (String data) {
        return Either.right(
            _mapJsonFlutterIssues(jsonFlutterIssueFromJson(data)));
      }, error: (ResponseError error) {
        return Either.left(_mapFlutterIssueError(error));
      });
    } on SocketException catch (_) {
      return Either.left(const FlutterIssueError.connectivityError());
    } on Exception catch (_) {
      return Either.left(const FlutterIssueError.genericError());
    }
  }

  FlutterIssueError _mapFlutterIssueError(ResponseError error) {
    if (error.statusCode == 504) {
      return const FlutterIssueError.connectivityError();
    } else {
      return const FlutterIssueError.genericError();
    }
  }
}
