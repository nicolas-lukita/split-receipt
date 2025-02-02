import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:split_receipt/blocs/equal_split/bloc.dart';

class BlocInitializer extends StatefulWidget {
  const BlocInitializer({super.key, required this.child});

  final Widget child;

  @override
  State<BlocInitializer> createState() => _BlocInitializerState();
}

class _BlocInitializerState extends State<BlocInitializer> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<EqualSplitBloc>(
        create: (context) => EqualSplitBloc(),
      )
    ], child: widget.child);
  }
}
