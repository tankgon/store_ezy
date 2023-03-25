part of 'product_rating_cubit.dart';

class ProductRatingState extends Equatable {

  const ProductRatingState({
    this.status = ItemDetailStatus.initial,
    required this.item,
    this.errorMsg,
  });

  final ItemDetailStatus status;
  final dynamic item;
  final String? errorMsg;

  @override
  List<Object?> get props => [status, item, errorMsg];
  
  ProductRatingState copyWith({
      ItemDetailStatus? status,
      dynamic? item,
      String? errorMsg,
  }) {
    return ProductRatingState(
      status: status ?? this.status,
      item: item ?? this.item,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }
}