part of 'bloc.dart';

abstract class EqualSplitEvent extends Equatable {}

class AddTransaction extends EqualSplitEvent {
  final Transaction transaction;

  AddTransaction(this.transaction);

  @override
  List<Object?> get props => [transaction];
}

class RemoveTransaction extends EqualSplitEvent {
  final String transactionId;

  RemoveTransaction(this.transactionId);

  @override
  List<Object?> get props => [transactionId];
}

class UpdateNumberOfPeople extends EqualSplitEvent {
  final int numberOfPeople;

  UpdateNumberOfPeople(this.numberOfPeople);

  @override
  List<Object?> get props => [numberOfPeople];
}
