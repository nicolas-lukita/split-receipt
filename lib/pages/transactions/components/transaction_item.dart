import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.name, required this.amount});
  final String name;
  final double amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      height: 50,
      child: Row(
        children: [
          Expanded(child: Text(name)),
          Text("\$$amount"),
          Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
