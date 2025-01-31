import 'package:flutter/material.dart';

extension ModalBottomSheet on BuildContext {
  showCustomModalBottomSheet(
    Widget child,
  ) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: this,
      builder: (context) {
        return Wrap(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 8, bottom: 32),
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height * 0.2,
                minWidth: double.infinity,
                maxHeight: MediaQuery.of(context).size.height,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Wrap(
                children: [
                  SizedBox(width: double.infinity, child: child),
                  const SizedBox(
                    height: 32,
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
