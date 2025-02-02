import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:split_receipt/blocs/bloc_models/bloc_state.dart';

part 'state.g.dart';

@JsonSerializable()
class EqualSplitState extends Equatable {
  final BlocState? blocState;
  final List<Transaction> transactions;
  final int numberOfPeople;

  const EqualSplitState(
      {required this.transactions,
      required this.numberOfPeople,
      this.blocState});

  factory EqualSplitState.fromJson(Map<String, dynamic> json) =>
      _$EqualSplitStateFromJson(json);

  Map<String, dynamic> toJson() => _$EqualSplitStateToJson(this);

  copyWith({
    BlocState? blocState,
    List<Transaction>? transactions,
    int? numberOfPeople,
  }) {
    return EqualSplitState(
      blocState: blocState ?? this.blocState,
      transactions: transactions ?? this.transactions,
      numberOfPeople: numberOfPeople ?? this.numberOfPeople,
    );
  }

  @override
  List<Object?> get props => [transactions, numberOfPeople];

  bool get isLoading => blocState?.status == BlocStatus.isLoading;
}

@JsonSerializable()
class Transaction extends Equatable {
  final String id;
  final String name;
  final double amount;

  const Transaction({
    required this.id,
    required this.name,
    required this.amount,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionToJson(this);

  @override
  List<Object?> get props => [id, name, amount];
}
