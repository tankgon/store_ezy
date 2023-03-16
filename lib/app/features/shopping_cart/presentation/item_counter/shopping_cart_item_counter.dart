import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/shopping_cart/presentation/item_counter/bloc/shopping_cart_item_counter_bloc.dart';
import 'package:ez_store/app/features/shopping_cart/presentation/item_counter/bloc/shopping_cart_item_counter_bloc.dart';
import 'package:ez_store/app/features/shopping_cart/presentation/item_counter/shopping_cart_item_counter_args.dart';
import 'package:ez_store/app/features/shopping_cart/presentation/item_counter/layout/shopping_cart_item_counter_layout_1.dart';

class ShoppingCartItemCounter extends StatefulWidget {
  const ShoppingCartItemCounter({
    super.key,
    required this.submitCallBack,
    this.counterInitValue = 1,
  });

  final ShoppingCartItemCounterSubmitCallBack submitCallBack;
  final int counterInitValue;

  @override
  State<ShoppingCartItemCounter> createState() => _ShoppingCartItemCounterState();
}

class _ShoppingCartItemCounterState extends State<ShoppingCartItemCounter> {

  late final TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController(text: widget.counterInitValue.toString());
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShoppingCartItemCounterBloc(
        initialValue: widget.counterInitValue,
        submitCallBack: widget.submitCallBack,
      ),
      child: Builder(
        builder: (context) {
          return MultiBlocListener(
            listeners: [
              BlocListener<ShoppingCartItemCounterBloc, ShoppingCartItemCounterState>(
                listenWhen: (previous, current) => previous.counterValue != current.counterValue || _textEditingController.text != current.counterValue.toString(),
                listener: (context, state) {
                  _textEditingController.text = state.counterValue.toString();
                },
              ),
              BlocListener<ShoppingCartItemCounterBloc, ShoppingCartItemCounterState>(
                listener: (context, state) {
                  if (state.status == ShoppingCartItemCounterStatus.submit) {
                    widget.submitCallBack.onValueSubmit?.call(state.counterValue);
                  }
                },
              ),
            ],
            child: ShoppingCartItemCounterLayout1(
              callback: ShoppingCartItemCounterCallBack(
                onAdd: () {
                  context.read<ShoppingCartItemCounterBloc>().add(ShoppingCartItemCounterAddEvent());
                },
                onRemove: () {
                  context.read<ShoppingCartItemCounterBloc>().add(ShoppingCartItemCounterRemoveEvent());
                },
                onValueChange: (value) {
                  context.read<ShoppingCartItemCounterBloc>().add(ShoppingCartItemCounterValueChangeEvent(value));
                },
              ),
              controller: _textEditingController,
            ),
          );
        },
      ),
    );
  }
}
