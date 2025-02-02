import 'package:flutter/material.dart';
import 'package:split_receipt/blocs/equal_split/state.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem(
      {super.key,
      required this.transaction,
      required this.onRemoveTransaction});
  final Transaction transaction;
  final Function(String) onRemoveTransaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      height: 50,
      child: Row(
        children: [
          Expanded(child: Text(transaction.name)),
          Text("\$${transaction.amount}"),
          InkWell(
            onTap: () => onRemoveTransaction(transaction.id),
            child: Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
