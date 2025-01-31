import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.content,
      this.hideBorder = true});
  final bool hideBorder;
  final String title;
  final VoidCallback? onPressed;
  final Widget? content;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.white.withValues(alpha: 0.2), blurRadius: 20)
          ],
          border: hideBorder
              ? null
              : Border(top: BorderSide(color: Colors.grey, width: 1)),
        ),
        padding:
            const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 40),
        child: Column(children: [
          content ?? const SizedBox(),
          ElevatedButton(onPressed: onPressed, child: Text(title))
        ]));
  }
}
