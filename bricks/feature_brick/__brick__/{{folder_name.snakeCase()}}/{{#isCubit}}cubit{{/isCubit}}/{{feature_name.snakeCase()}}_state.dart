part of '{{feature_name.snakeCase()}}_cubit.dart';

class {{feature_name.pascalCase()}}State extends RequestItemState<dynamic> {
  const {{feature_name.pascalCase()}}State({
    super.status = ItemStatus.initial,
    required super.item,
    super.error,
  });
}