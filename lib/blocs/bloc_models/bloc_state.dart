import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bloc_state.g.dart';

enum BlocStatus { idle, isLoading, isSuccess, isError }

@JsonSerializable()
class BlocState extends Equatable {
  final BlocStatus status;
  final String? description;
  const BlocState({
    this.status = BlocStatus.idle,
    this.description,
  });

  @override
  List<Object?> get props => [
        status,
        description,
      ];

  factory BlocState.fromJson(Map<String, dynamic> json) =>
      _$BlocStateFromJson(json);

  Map<String, dynamic> toJson() => _$BlocStateToJson(this);

  @override
  String toString() => toJson().toString();
}
