import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/shopping_cart/seft.dart';

part 'shopping_cart_bloc.freezed.dart';
part 'shopping_cart_event.dart';
part 'shopping_cart_state.dart';

class ShoppingCartBloc extends Bloc<ShoppingCartEvent, ShoppingCartState> {
  // ShoppingCartBloc() : super(const ShoppingCartState()) {
  //   on<ShoppingCartInitialEvent>(_onInitial);
  //   on<ShoppingCartFetchEvent>(_onFetch);
  //   on<ShoppingCartAddItemEvent>(_onAddItem);
  //   on<ShoppingCartUpdateItemEvent>(_onUpdateItem);
  //   on<ShoppingCartRemoveItemEvent>(_onRemoveItem);
  // }

  ShoppingCartBloc() : super(const ShoppingCartState()) {
    on<_ShoppingCartInitialEvent>(_onInitial);
    on<_ShoppingCartFetchEvent>(_onFetch);
    on<_ShoppingCartAddItemEvent>(_onAddItem);
    on<_ShoppingCartUpdateItemEvent>(_onUpdateItem);
    on<_ShoppingCartRemoveItemEvent>(_onRemoveItem);
  }

  final ShoppingCartRepo _repo = getIt();
  Future<void> _fetchData(Emitter<ShoppingCartState> emit) async {
    final shoppingCartList = await _repo.getShoppingCartList();
    emit(
      state.copyWith(
        status: ShoppingCartStatus.loaded,
        items: shoppingCartList,
      ),
    );
  }

  FutureOr<void> _onInitial(
    _ShoppingCartInitialEvent event,
    Emitter<ShoppingCartState> emit,
  ) {
    emit(state.copyWith(status: ShoppingCartStatus.loading));
    _fetchData(emit);
  }

  Future<FutureOr<void>> _onFetch(
    _ShoppingCartFetchEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await _fetchData(emit);
  }

  FutureOr<void> _onAddItem(
    _ShoppingCartAddItemEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    final item = event.item;
    await _repo.addShoppingCartItem(
      item: item,
      selectedVariant: event.selectedVariant,
      quantity: event.quantity,
    );
    await _fetchData(emit);
  }

  FutureOr<void> _onRemoveItem(
    _ShoppingCartRemoveItemEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    final item = event.cartItem;
    await _repo.removeShoppingCartItem(
      cartItem: item,
    );
    await _fetchData(emit);
  }

  FutureOr<void> _onUpdateItem(
    _ShoppingCartUpdateItemEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    final item = event.cartItem;
    await _repo.updateShoppingCartItem(
      cartItem: item,
      quantity: event.quantity,
    );
    await _fetchData(emit);
  }

  int get totalQuantity {
    return state.items.fold<int>(
      0,
      (previousValue, element) =>
          previousValue + element.productCartList.length,
    );
  }
}
