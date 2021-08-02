// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_flutter_issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JsonFlutterIssue _$_$_JsonFlutterIssueFromJson(Map<String, dynamic> json) {
  return _$_JsonFlutterIssue(
    number: json['number'] as int,
    title: json['title'] as String,
    state: _$enumDecode(_$JsonStateEnumMap, json['state']),
    body: json['body'] as String,
    assignee: json['assignee'] == null
        ? null
        : JsonUser.fromJson(json['assignee'] as Map<String, dynamic>),
    assignees: (json['assignees'] as List<dynamic>?)
            ?.map((e) => JsonUser.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    comments: json['comments'] as int,
    createdAt: DateTime.parse(json['created_at'] as String),
    pullRequest: json['pullRequest'] == null
        ? null
        : JsonPullRequest.fromJson(json['pullRequest'] as Map<String, dynamic>),
    labels: (json['labels'] as List<dynamic>?)
            ?.map((e) => JsonLabel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_JsonFlutterIssueToJson(
        _$_JsonFlutterIssue instance) =>
    <String, dynamic>{
      'number': instance.number,
      'title': instance.title,
      'state': _$JsonStateEnumMap[instance.state],
      'body': instance.body,
      'assignee': instance.assignee,
      'assignees': instance.assignees,
      'comments': instance.comments,
      'created_at': instance.createdAt.toIso8601String(),
      'pullRequest': instance.pullRequest,
      'labels': instance.labels,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$JsonStateEnumMap = {
  JsonState.open: 'open',
  JsonState.closed: 'closed',
  JsonState.all: 'all',
};

_$_JsonPullRequest _$_$_JsonPullRequestFromJson(Map<String, dynamic> json) {
  return _$_JsonPullRequest(
    url: json['url'] as String,
    htmlUrl: json['htmlUrl'] as String,
    diffUrl: json['diffUrl'] as String,
    patchUrl: json['patchUrl'] as String,
  );
}

Map<String, dynamic> _$_$_JsonPullRequestToJson(_$_JsonPullRequest instance) =>
    <String, dynamic>{
      'url': instance.url,
      'htmlUrl': instance.htmlUrl,
      'diffUrl': instance.diffUrl,
      'patchUrl': instance.patchUrl,
    };
