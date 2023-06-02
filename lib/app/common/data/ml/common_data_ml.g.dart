// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_data_ml.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagingResultML<T> _$PagingResultMLFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PagingResultML<T>(
      result: (json['result'] as List<dynamic>?)?.map(fromJsonT).toList(),
      total: json['total'] as int?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$PagingResultMLToJson<T>(
  PagingResultML<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'result': instance.result?.map(toJsonT).toList(),
      'total': instance.total,
      'limit': instance.limit,
    };
