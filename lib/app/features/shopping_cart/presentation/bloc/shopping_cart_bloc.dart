import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/data/model/product_base_model.dart';

part 'shopping_cart_event.dart';

part 'shopping_cart_state.dart';

class ShoppingCartBloc extends Bloc<ShoppingCartEvent, ShoppingCartState> {
  ShoppingCartBloc() : super(const ShoppingCartState()) {
    on<ShoppingCartInitialEvent>(_onInitial);
    on<ShoppingCartFetchEvent>(_onFetch);
    on<ShoppingCartAddItemEvent>(_onAddItem);
    on<ShoppingCartRemoveItemEvent>(_onRemoveItem);
  }

  FutureOr<void> _onInitial(ShoppingCartInitialEvent event, Emitter<ShoppingCartState> emit) {

  }

  FutureOr<void> _onFetch(ShoppingCartFetchEvent event, Emitter<ShoppingCartState> emit) {

  }

  FutureOr<void> _onAddItem(ShoppingCartAddItemEvent event, Emitter<ShoppingCartState> emit) {

  }

  FutureOr<void> _onRemoveItem(ShoppingCartRemoveItemEvent event, Emitter<ShoppingCartState> emit) {

  }
}
