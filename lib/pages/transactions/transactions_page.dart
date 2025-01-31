import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:split_receipt/components/bottom_button.dart';
import 'package:split_receipt/components/page_container.dart';
import 'package:split_receipt/pages/transactions/components/transaction_item.dart';
import 'package:split_receipt/pages/transactions/components/transaction_textfield.dart';

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
    return PageContainer(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("Transactions"),
                  TransactionTextfield(prefix: Text("Name")),
                  const SizedBox(height: 8),
                  TransactionTextfield(prefix: Text("\$")),
                  const SizedBox(height: 16),
                  ElevatedButton(
                      onPressed: () {}, child: Text("Add Transaction")),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        TransactionItem(
                          name: "Sample",
                          amount: 123,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            title: "Continue",
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
