// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bloc_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlocState _$BlocStateFromJson(Map<String, dynamic> json) => BlocState(
      status: $enumDecodeNullable(_$BlocStatusEnumMap, json['status']) ??
          BlocStatus.idle,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$BlocStateToJson(BlocState instance) => <String, dynamic>{
      'status': _$BlocStatusEnumMap[instance.status]!,
      'description': instance.description,
    };

const _$BlocStatusEnumMap = {
  BlocStatus.idle: 'idle',
  BlocStatus.isLoading: 'isLoading',
  BlocStatus.isSuccess: 'isSuccess',
  BlocStatus.isError: 'isError',
};
