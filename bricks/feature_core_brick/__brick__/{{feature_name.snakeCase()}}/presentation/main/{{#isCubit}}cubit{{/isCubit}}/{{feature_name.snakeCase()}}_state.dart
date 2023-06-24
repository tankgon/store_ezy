part of '{{feature_name.snakeCase()}}_cubit.dart';

class {{feature_name.pascalCase()}}State extends RequestState {
const {{feature_name.pascalCase()}}State({
super.status = ItemDefaultStatus.initial,
required this.item,
super.error,
});

final dynamic item;

@override
List<Object?> get props => [status, item, error];

{{feature_name.pascalCase()}}State copyWith({
ItemDefaultStatus? status,
dynamic? item,
Object? error,
}) {
return {{feature_name.pascalCase()}}State(
status: status ?? this.status,
item: item ?? this.item,
error: error ?? this.error,
);
}
}