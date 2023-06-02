import 'package:mulstore/all_file/all_file.dart';

part 'common_data_ml.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PagingResultML<T> {
  final List<T>? result;
  final int? total;
  final int? limit;

  const PagingResultML({
    this.result,
    this.total,
    this.limit,
  });

  factory PagingResultML.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PagingResultMLFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$PagingResultMLToJson(this, toJsonT);
}