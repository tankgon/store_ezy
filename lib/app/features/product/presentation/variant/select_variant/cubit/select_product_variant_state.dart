part of 'select_product_variant_cubit.dart';

class SelectProductVariantState extends RequestState {
  const SelectProductVariantState({
    super.status = ItemStatus.initial,
    required this.item,
    super.error,
  });

  final dynamic item;

  @override
  List<Object?> get props => [status, item, error];

  SelectProductVariantState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return SelectProductVariantState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
