import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:split_receipt/blocs/equal_split/bloc.dart';
import 'package:split_receipt/blocs/equal_split/state.dart';
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
  TextEditingController transactionNameController = TextEditingController();
  TextEditingController transactionAmountController = TextEditingController();
  String transactionName = '';
  double transactionAmount = 0;

  onChangeTransactionName(String value) {
    setState(() {
      transactionName = value;
    });
  }

  onChangeTransactionAmount(String value) {
    setState(() {
      transactionAmount = double.parse(value);
    });
  }

  onPressAddTransaction() {
    // TODO: add validator here

    context.read<EqualSplitBloc>().add(AddTransaction(
          transaction: Transaction(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            name: transactionName,
            amount: transactionAmount,
          ),
        ));

    setState(() {
      transactionNameController.clear();
      transactionAmountController.clear();
    });

    FocusScope.of(context).unfocus();
  }

  onRemoveTransaction(String transactionId) {
    context
        .read<EqualSplitBloc>()
        .add(RemoveTransaction(transactionId: transactionId));
  }

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Text("Transactions"),
                    TransactionTextfield(
                      prefix: Text("Name"),
                      controller: transactionNameController,
                      onChanged: onChangeTransactionName,
                    ),
                    const SizedBox(height: 8),
                    TransactionTextfield(
                      prefix: Text("\$"),
                      controller: transactionAmountController,
                      onChanged: onChangeTransactionAmount,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                        onPressed: onPressAddTransaction,
                        child: Text("Add Transaction")),
                    const SizedBox(height: 16),
                    BlocBuilder<EqualSplitBloc, EqualSplitState>(
                      builder: (context, state) {
                        return SingleChildScrollView(
                          child: Column(
                            children: state.transactions.map((transaction) {
                              return TransactionItem(
                                transaction: transaction,
                                onRemoveTransaction: onRemoveTransaction,
                              );
                            }).toList(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              children: [
                const Text("Add Tip"),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(child: Text("\$5")),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(child: Text("\$5")),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(child: Text("\$5")),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(child: Text("\$5")),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(child: Text("\$5")),
                    ),
                  ],
                )
              ],
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
