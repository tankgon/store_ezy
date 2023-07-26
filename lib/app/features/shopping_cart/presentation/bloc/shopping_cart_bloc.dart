import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/shopping_cart/seft.dart';

part 'shopping_cart_event.dart';
part 'shopping_cart_state.dart';

class ShoppingCartBloc extends Bloc<ShoppingCartEvent, ShoppingCartState> {
  ShoppingCartBloc() : super(const ShoppingCartState()) {
    on<ShoppingCartInitialEvent>(_onInitial);
    on<ShoppingCartFetchEvent>(_onFetch);
    on<ShoppingCartAddItemEvent>(_onAddItem);
    on<ShoppingCartUpdateItemEvent>(_onUpdateItem);
    on<ShoppingCartRemoveItemEvent>(_onRemoveItem);
  }

  final ShoppingCartRepo _repo = getIt();

  FutureOr<void> _onInitial(
    ShoppingCartInitialEvent event,
    Emitter<ShoppingCartState> emit,
  ) {}

  Future<FutureOr<void>> _onFetch(
    ShoppingCartFetchEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await _fetchData(emit);
  }

  FutureOr<void> _onAddItem(
      ShoppingCartAddItemEvent event, Emitter<ShoppingCartState> emit) {
    final item = event.item;
    _repo.addShoppingCartItem(
      item: item,
      quantity: event.quantity,
    );
    _fetchData(emit);
  }

  FutureOr<void> _onRemoveItem(
    ShoppingCartRemoveItemEvent event,
    Emitter<ShoppingCartState> emit,
  ) {}

  Future<void> _fetchData(Emitter<ShoppingCartState> emit) async {
    final shoppingCartList = await _repo.getShoppingCartList();
    emit(
      state.copyWith(
        status: ShoppingCartStatus.loaded,
        items: shoppingCartList,
      ),
    );
  }

  FutureOr<void> _onUpdateItem(
    ShoppingCartUpdateItemEvent event,
    Emitter<ShoppingCartState> emit,
  ) {}
}
