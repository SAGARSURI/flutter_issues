import 'package:flutter/material.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/constants.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

class IssueDetailScreen extends StatelessWidget {
  const IssueDetailScreen({
    Key? key,
    required this.issue,
  }) : super(key: key);

  final FlutterIssue issue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(issueDetailLabel)),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          Text(
            issue.title,
            style: Theme.of(context).textTheme.headline6,
          ),
          const Divider(),
          Markdown(
            shrinkWrap: true,
            selectable: true,
            physics: const NeverScrollableScrollPhysics(),
            data: issue.body,
            onTapLink: (String text, String? href, String title) async {
              if (href != null) {
                await canLaunch(href)
                    ? await launch(href)
                    : ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(cannotLaunchUrlMessage),
                        ),
                      );
              }
            },
          ),
        ],
      ),
    );
  }
}
