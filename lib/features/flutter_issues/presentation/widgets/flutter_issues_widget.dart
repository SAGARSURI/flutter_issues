import 'package:flutter/material.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/issue_state.dart';

class FlutterIssuesWidget extends StatelessWidget {
  const FlutterIssuesWidget({
    Key? key,
    required this.controller,
    required this.data,
    required this.onTap,
  }) : super(key: key);

  final ScrollController controller;
  final List<FlutterIssue> data;
  final Function(FlutterIssue issue) onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: controller,
      itemBuilder: (context, index) {
        return ListTile(
          tileColor: Theme.of(context).colorScheme.onBackground,
          leading: _getLeadingIcon(data[index].currentState),
          title: Text(
            data[index].title,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          subtitle: _displayLabels(data[index], context),
          trailing: Chip(
            avatar: const Icon(
              Icons.comment,
              size: 16.0,
            ),
            label: Text(
              data[index].comments.toString(),
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          onTap: () => onTap(data[index]),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: data.length,
    );
  }

  Widget _getLeadingIcon(IssueState currentState) {
    if (currentState == IssueState.open) {
      return const Icon(Icons.label, color: Colors.green);
    } else {
      return const Icon(Icons.label, color: Colors.red);
    }
  }

  Wrap _displayLabels(FlutterIssue data, BuildContext context) {
    return Wrap(
      children: data.label
          .map((e) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Chip(
                  label: Text(
                    e.name,
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        color: _getLabelColor(e.color), fontSize: 10.0),
                  ),
                  backgroundColor: e.color,
                ),
              ))
          .toList(),
    );
  }

  Color _getLabelColor(Color color) {
    var d = 0;
    var luminance =
        (0.299 * color.red + 0.587 * color.green + 0.114 * color.blue) / 255;
    if (luminance > 0.5) {
      d = 0;
    } else {
      d = 255;
    }
    return Color.fromARGB(color.alpha, d, d, d);
  }
}
