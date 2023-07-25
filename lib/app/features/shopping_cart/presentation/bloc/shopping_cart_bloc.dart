import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/shopping_cart/domain/repo/shopping_cart_repo.dart';

part 'shopping_cart_event.dart';
part 'shopping_cart_state.dart';

class ShoppingCartBloc extends Bloc<ShoppingCartEvent, ShoppingCartState> {
  ShoppingCartBloc() : super(const ShoppingCartState()) {
    on<ShoppingCartInitialEvent>(_onInitial);
    on<ShoppingCartFetchEvent>(_onFetch);
    on<ShoppingCartAddItemEvent>(_onAddItem);
    on<ShoppingCartRemoveItemEvent>(_onRemoveItem);
  }

  final ShoppingCartRepo _repo = getIt();

  FutureOr<void> _onInitial(
      ShoppingCartInitialEvent event, Emitter<ShoppingCartState> emit) {}

  FutureOr<void> _onFetch(
      ShoppingCartFetchEvent event, Emitter<ShoppingCartState> emit) {
    emit(
      state.copyWith(
        status: ShoppingCartStatus.loaded,
        items: [
          ProductEntity.demo(),
          ProductEntity.demo(),
          ProductEntity.demo(),
        ],
      ),
    );
  }

  FutureOr<void> _onAddItem(
      ShoppingCartAddItemEvent event, Emitter<ShoppingCartState> emit) {
    var items = state.items;
    final item = event.item;
    final index = items.indexWhere((element) => element.id == item.id);
    if (index >= 0) {
      items[index] = item;
    } else {
      items = [...items, item];
    }
    _repo.addShoppingCartItem(
      item: item,
      quantity: event.quantity,
    );
    emit(
      state.copyWith(
        status: ShoppingCartStatus.loaded,
        items: items,
      ),
    );
  }

  FutureOr<void> _onRemoveItem(
      ShoppingCartRemoveItemEvent event, Emitter<ShoppingCartState> emit) {}
}
