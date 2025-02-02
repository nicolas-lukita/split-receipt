import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'state.dart';

part 'event.dart';

class EqualSplitBloc extends HydratedBloc<EqualSplitEvent, EqualSplitState> {
  EqualSplitBloc()
      : super(const EqualSplitState(transactions: [], numberOfPeople: 1)) {
    on<AddTransaction>(_onAddTransaction);
    on<RemoveTransaction>(_onRemoveTransaction);
    on<UpdateNumberOfPeople>(_onUpdateNumberOfPeople);
  }

  void _onAddTransaction(AddTransaction event, Emitter<EqualSplitState> emit) {
    final transactions = List<Transaction>.from(state.transactions)
      ..add(event.transaction);
    emit(state.copyWith(transactions: transactions));
  }

  void _onRemoveTransaction(
      RemoveTransaction event, Emitter<EqualSplitState> emit) {
    final transactions = List<Transaction>.from(state.transactions)
      ..removeWhere((element) => element.id == event.transactionId);
    emit(state.copyWith(transactions: transactions));
  }

  void _onUpdateNumberOfPeople(
      UpdateNumberOfPeople event, Emitter<EqualSplitState> emit) {
    emit(state.copyWith(numberOfPeople: event.numberOfPeople));
  }

  @override
  Map<String, dynamic> toJson(EqualSplitState state) => state.toJson();

  @override
  EqualSplitState fromJson(Map<String, dynamic> json) =>
      EqualSplitState.fromJson(json);

  @override
  String toString() => toJson(state).toString();

  List<Object?> get props => [state];
}
