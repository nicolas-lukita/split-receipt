import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:split_receipt/router.dart';
import 'package:split_receipt/theme.dart';

class RouterInitializer extends StatefulWidget {
  const RouterInitializer({super.key});

  @override
  State<RouterInitializer> createState() => _RouterInitializerState();
}

class _RouterInitializerState extends State<RouterInitializer> {
  GoRouter mainRouterInstance = mainRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: context.themeData,
      routerConfig: mainRouterInstance,
    );
  }
}
