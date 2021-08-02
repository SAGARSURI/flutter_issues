import 'package:flutter/material.dart';

class FlutterIssuesPageBuilder extends StatefulWidget {
  const FlutterIssuesPageBuilder(
      {Key? key, required this.builder, this.onNextPageRequested})
      : super(key: key);
  final Function(BuildContext, ScrollController) builder;
  final VoidCallback? onNextPageRequested;

  @override
  _FlutterIssuesPageBuilderState createState() =>
      _FlutterIssuesPageBuilderState();
}

class _FlutterIssuesPageBuilderState extends State<FlutterIssuesPageBuilder> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      widget.onNextPageRequested?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _scrollController);
  }
}
