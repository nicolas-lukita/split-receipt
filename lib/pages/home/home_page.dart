import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  static String path = '/home';
  static GoRoute get route {
    return GoRoute(
      path: HomePage.path,
      builder: (context, state) => const HomePage(),
    );
  }

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Hi");
  }
}
