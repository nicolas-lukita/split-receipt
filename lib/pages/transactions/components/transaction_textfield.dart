import 'package:flutter/material.dart';

class TransactionTextfield extends StatelessWidget {
  const TransactionTextfield(
      {super.key,
      required this.prefix,
      required this.controller,
      required this.onChanged});
  final Widget prefix;
  final TextEditingController controller;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
      ),
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Center(child: prefix),
          ),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.number,
              controller: controller,
              onChanged: onChanged,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
