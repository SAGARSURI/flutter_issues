//ignore_for_file: lines_longer_than_80_chars
import 'package:flutter/widgets.dart';
import 'package:flutter_issues/features/flutter_issues/data/mapper/map_json_flutter_issues.dart';
import 'package:flutter_issues/features/flutter_issues/data/model/json_flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/issue_state.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/label.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const _sut = mapJsonFlutterIssues;
  test(
      'mapJsonFlutterIssues SHOULD return list of issues, WHEN list of json flutter issues are provided',
      () {
    final actual = _sut(jsonFlutterIssueFromJson(issueResponse));

    expect(actual, [
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
    ]);
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
