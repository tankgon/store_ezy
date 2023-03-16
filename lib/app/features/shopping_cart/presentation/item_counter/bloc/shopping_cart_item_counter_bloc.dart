import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/shopping_cart/presentation/item_counter/shopping_cart_item_counter_args.dart';

part 'shopping_cart_item_counter_event.dart';

part 'shopping_cart_item_counter_state.dart';

class ShoppingCartItemCounterBloc extends Bloc<ShoppingCartItemCounterEvent, ShoppingCartItemCounterState> {
  ShoppingCartItemCounterBloc({
    int initialValue = 1,
    required this.submitCallBack,
  }) : super(ShoppingCartItemCounterState(counterValue: initialValue)) {
    on<ShoppingCartItemCounterAddEvent>(_onAddItem);
    on<ShoppingCartItemCounterRemoveEvent>(_onRemoveItem);
    on<ShoppingCartItemCounterValueChangeEvent>(_onValueChange);
    on<ShoppingCartItemCounterSubmitValueEvent>(_onSubmitValue);
  }

  Timer? _timer;
  final ShoppingCartItemCounterSubmitCallBack submitCallBack;

  void onInputDelayCallBack({
    Duration inputDelay = const Duration(seconds: 1),
  }) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(inputDelay, () {
      add(ShoppingCartItemCounterSubmitValueEvent());
      _timer?.cancel();
      _timer = null;
    });
  }

  void _cancelCallBack() {
    _timer?.cancel();
    _timer = null;
  }

  void _onAddItem(ShoppingCartItemCounterAddEvent event, Emitter<ShoppingCartItemCounterState> emit) {
    emit(state.copyWith(counterValue: state.counterValue + 1, status: ShoppingCartItemCounterStatus.changing));
    onInputDelayCallBack();
  }

  void _onRemoveItem(ShoppingCartItemCounterRemoveEvent event, Emitter<ShoppingCartItemCounterState> emit) {
    if (state.counterValue == 1) {
      _cancelCallBack();
      submitCallBack.onDeleteItem?.call();
      return;
    }

    emit(state.copyWith(counterValue: state.counterValue - 1, status: ShoppingCartItemCounterStatus.changing));
    onInputDelayCallBack();
  }

  void _onValueChange(ShoppingCartItemCounterValueChangeEvent event, Emitter<ShoppingCartItemCounterState> emit) {
    _cancelCallBack();
    if (event.value == 0) {
      emit(
        state.copyWith(
          status: ShoppingCartItemCounterStatus.initial,
        ),
      );
      submitCallBack.onDeleteItem?.call();
      return;
    }
    emit(
      state.copyWith(
        counterValue: event.value,
        status: ShoppingCartItemCounterStatus.submit,
      ),
    );
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }

  FutureOr<void> _onSubmitValue(ShoppingCartItemCounterSubmitValueEvent event, Emitter<ShoppingCartItemCounterState> emit) {
    emit(state.copyWith(status: ShoppingCartItemCounterStatus.submit));
  }
}
