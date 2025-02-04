// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EqualSplitState _$EqualSplitStateFromJson(Map<String, dynamic> json) =>
    EqualSplitState(
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      numberOfPeople: (json['numberOfPeople'] as num).toInt(),
      blocState: json['blocState'] == null
          ? null
          : BlocState.fromJson(json['blocState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EqualSplitStateToJson(EqualSplitState instance) =>
    <String, dynamic>{
      'blocState': instance.blocState,
      'transactions': instance.transactions,
      'numberOfPeople': instance.numberOfPeople,
    };

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
      id: json['id'] as String,
      name: json['name'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'amount': instance.amount,
    };
