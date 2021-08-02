import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_issues/features/flutter_issues/domain/model/flutter_issue.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/flutter_issues_screen.dart';
import 'package:flutter_issues/features/flutter_issues/presentation/issue_detail/issue_detail_screen.dart';
import 'package:flutter_issues/theme/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Issues',
        theme: lightTheme,
        darkTheme: darkTheme,
        onGenerateRoute: (RouteSettings settings) {
          final arguments = settings.arguments;
          switch (settings.name) {
            case '/':
              return MaterialPageRoute(builder: (_) {
                return FlutterIssuesScreen(
                  routeToDetail:
                      (BuildContext context, FlutterIssue flutterIssue) {
                    Navigator.pushNamed(context, '/issue_detail_screen',
                        arguments: flutterIssue);
                  },
                );
              });
            case '/issue_detail_screen':
              if (arguments is FlutterIssue) {
                return MaterialPageRoute(builder: (_) {
                  return IssueDetailScreen(issue: arguments);
                });
              }
              return null;
          }
        },
      ),
    );
  }
}
