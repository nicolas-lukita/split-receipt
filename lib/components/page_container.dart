import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  const PageContainer(
      {super.key, required this.child, this.hideAppbar = false});
  final Widget child;
  final bool hideAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: hideAppbar ? null : AppBar(),
      body: child,
    );
  }
}
