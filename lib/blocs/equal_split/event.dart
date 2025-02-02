part of 'bloc.dart';

abstract class EqualSplitEvent extends Equatable {}

class AddTransaction extends EqualSplitEvent {
  final Transaction transaction;

  AddTransaction({required this.transaction});

  @override
  List<Object?> get props => [transaction];
}

class RemoveTransaction extends EqualSplitEvent {
  final String transactionId;

  RemoveTransaction({required this.transactionId});

  @override
  List<Object?> get props => [transactionId];
}

class UpdateNumberOfPeople extends EqualSplitEvent {
  final int numberOfPeople;

  UpdateNumberOfPeople({required this.numberOfPeople});

  @override
  List<Object?> get props => [numberOfPeople];
}

class ClearEqualSplitState extends EqualSplitEvent {
  @override
  List<Object?> get props => [];
}
