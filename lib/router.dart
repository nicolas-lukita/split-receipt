import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:split_receipt/pages/home/home_page.dart';

final appNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'navigatorKey');

String? _redirect(BuildContext context, GoRouterState state) {
  return null;
}

final mainRoutes = [
  HomePage.route,
];

GoRouter mainRouter() {
  return GoRouter(
      initialLocation: HomePage.path,
      routes: mainRoutes,
      redirect: _redirect,
      navigatorKey: appNavigatorKey);
}

class MainPage {}
