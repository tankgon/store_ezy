part of '{{feature_name.snakeCase()}}_cubit.dart';

class {{feature_name.pascalCase()}}State extends Equatable {

  const {{feature_name.pascalCase()}}State({
    this.status = ItemDetailStatus.initial,
    required this.item,
    this.errorMsg,
  });

  final ItemDetailStatus status;
  final dynamic item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];
  
  {{feature_name.pascalCase()}}State copyWith({
      ItemDetailStatus? status,
      dynamic? item,
      Object? error,
  }) {
    return {{feature_name.pascalCase()}}State(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.errorMsg,
    );
  }
}