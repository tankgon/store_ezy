part of 'product_search_cubit.dart';

class ProductSearchState extends Equatable {
  const ProductSearchState({
    required this.filterData,
  });

  final ProductFilterData? filterData;

  @override
  List<Object?> get props => [filterData];

  ProductSearchState copyWith({
    ProductFilterData? filterData,
  }) {
    return ProductSearchState(
      filterData: filterData ?? this.filterData,
    );
  }
}
