import 'package:ez_store/all_file/all_file.dart';

class ShoppingCartItemCounterCallBack {
  const ShoppingCartItemCounterCallBack({
    this.onValueChange,
    this.onAdd,
    this.onRemove,
  });

  final ValueChanged<int>? onValueChange;
  final VoidCallback? onAdd;
  final VoidCallback? onRemove;
}

class ShoppingCartItemCounterSubmitCallBack {
  const ShoppingCartItemCounterSubmitCallBack({
    this.onValueSubmit,
    this.onDeleteItem,
  });

  final ValueChanged<int>? onValueSubmit;
  final VoidCallback? onDeleteItem;
}
