import 'package:flutter/widgets.dart';
import 'package:flutter_issues/features/flutter_issues/data/mapper/map_json_flutter_issues.dart';
import 'package:flutter_issues/features/flutter_issues/data/repository/flutter_issue_repository_impl.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue_error.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/issue_state.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/label.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:network/network.dart';

class MockClient extends Mock implements HttpClient {}

void main() {
  final client = MockClient();
  final sut = FlutterIssueRepositoryImpl(
    client,
    mapJsonFlutterIssues,
  );

  group('issues', () {
    test('issues SHOULD return list of issues, WHEN network is success',
        () async {
      when(() => client.get(any())).thenAnswer((invocation) =>
          Future.value(const NetworkResponse.success(issueResponse)));

      final result = await sut.issues(sort: 'created', state: 'open', page: 1);

      result.match(
        (l) => null,
        (r) => expect(r, [
          FlutterIssue.create(
              title: 'title',
              body: 'body',
              number: 1,
              comments: 1,
              currentState: IssueState.open,
              createdAt: DateTime.utc(2021, 07, 30),
              isPullRequest: false,
              label: [
                const Label.create(
                  name: 'in triage',
                  color: Color(0xFF000000),
                ),
              ])
        ]),
      );
    });

    test('issues SHOULD return empty list, WHEN response contains empty body',
        () async {
      when(() => client.get(any())).thenAnswer((invocation) =>
          Future.value(const NetworkResponse.success('''[]''')));

      final result = await sut.issues(sort: 'created', state: 'open', page: 1);

      result.match(
        (l) => null,
        (r) => expect(r, []),
      );
    });

    test('issues SHOULD return generic error, WHEN the network throw error',
        () async {
      when(() => client.get(any())).thenAnswer((invocation) => Future.value(
          NetworkResponse.error(ResponseError(
              statusCode: 404, exception: Exception('Not Found')))));

      final result = await sut.issues(sort: 'created', state: 'open', page: 1);

      result.match(
        (l) => expect(l, const FlutterIssueError.genericError()),
        (r) => null,
      );
    });

    test('issues SHOULD return generic error, WHEN the network throw error',
        () async {
      when(() => client.get(any())).thenAnswer((invocation) => Future.value(
          NetworkResponse.error(ResponseError(
              statusCode: 504, exception: Exception('Time-out')))));

      final result = await sut.issues(sort: 'created', state: 'open', page: 1);

      result.match(
        (l) => expect(l, const FlutterIssueError.connectivityError()),
        (r) => null,
      );
    });
  });
}

const issueResponse = '''
[
  {
        "url": "https://api.github.com/repos/flutter/flutter/issues/87334",
        "repository_url": "https://api.github.com/repos/flutter/flutter",
        "labels_url": "https://api.github.com/repos/flutter/flutter/issues/87334/labels{/name}",
        "comments_url": "https://api.github.com/repos/flutter/flutter/issues/87334/comments",
        "events_url": "https://api.github.com/repos/flutter/flutter/issues/87334/events",
        "html_url": "https://github.com/flutter/flutter/issues/87334",
        "id": 956621471,
        "node_id": "MDU6SXNzdWU5NTY2MjE0NzE=",
        "number": 1,
        "title": "title",
        "user": {
            "login": "akindone",
            "id": 17843738,
            "node_id": "MDQ6VXNlcjE3ODQzNzM4",
            "avatar_url": "https://avatars.githubusercontent.com/u/17843738?v=4",
            "gravatar_id": "",
            "url": "https://api.github.com/users/akindone",
            "html_url": "https://github.com/akindone",
            "followers_url": "https://api.github.com/users/akindone/followers",
            "following_url": "https://api.github.com/users/akindone/following{/other_user}",
            "gists_url": "https://api.github.com/users/akindone/gists{/gist_id}",
            "starred_url": "https://api.github.com/users/akindone/starred{/owner}{/repo}",
            "subscriptions_url": "https://api.github.com/users/akindone/subscriptions",
            "organizations_url": "https://api.github.com/users/akindone/orgs",
            "repos_url": "https://api.github.com/users/akindone/repos",
            "events_url": "https://api.github.com/users/akindone/events{/privacy}",
            "received_events_url": "https://api.github.com/users/akindone/received_events",
            "type": "User",
            "site_admin": false
        },
        "labels": [
            {
                "id": 1860473175,
                "node_id": "MDU6TGFiZWwxODYwNDczMTc1",
                "url": "https://api.github.com/repos/flutter/flutter/labels/in%20triage",
                "name": "in triage",
                "color": "000000",
                "default": false,
                "description": "Presently being triaged by the triage team."
            }
        ],
        "state": "open",
        "locked": false,
        "assignee": null,
        "assignees": [],
        "milestone": null,
        "comments": 1,
        "created_at": "2021-07-30T00:00:00Z",
        "updated_at": "2021-07-30T10:35:54Z",
        "closed_at": null,
        "author_association": "CONTRIBUTOR",
        "active_lock_reason": null,
        "body": "body",
        "performed_via_github_app": null
    }
]
''';
