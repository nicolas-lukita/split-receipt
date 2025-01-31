import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransactionsPage extends StatefulWidget {
  static String path = '/transactions';
  static GoRoute get route {
    return GoRoute(
      path: TransactionsPage.path,
      builder: (context, state) => const TransactionsPage(),
    );
  }

  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Transactions Page'),
      ),
    );
  }
}
