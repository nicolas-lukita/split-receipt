import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:split_receipt/pages/transactions/transactions_page.dart';

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
    onPressEqualSplit() {
      context.push(TransactionsPage.path);
    }

    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: onPressEqualSplit, child: Text("Equal Split")),
        ElevatedButton(onPressed: null, child: Text("Custom Split"))
      ],
    )));
  }
}
