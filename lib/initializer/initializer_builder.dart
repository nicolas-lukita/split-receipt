import 'package:flutter/material.dart';
import 'package:split_receipt/initializer/bloc_initializer.dart';
import 'package:split_receipt/initializer/router_initializer.dart';

class InitializerBuilder extends StatelessWidget {
  const InitializerBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocInitializer(
      child: RouterInitializer(),
    );
  }
}
