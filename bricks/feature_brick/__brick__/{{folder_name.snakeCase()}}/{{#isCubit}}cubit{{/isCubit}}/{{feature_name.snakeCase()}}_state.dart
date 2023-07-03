part of '{{feature_name.snakeCase()}}_cubit.dart';

@CopyWith(copyWithNull: true)
class {{feature_name.pascalCase()}}State extends RequestItemState<Object> {
  const {{feature_name.pascalCase()}}State({
    super.status = ItemStatus.initial,
    required super.item,
    super.error,
  });
}