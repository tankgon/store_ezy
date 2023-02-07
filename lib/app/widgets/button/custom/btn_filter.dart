import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/filter/bloc/filter_data_cubit.dart';

class BtnFilter extends StatelessWidget {
  const BtnFilter({
    super.key,
    this.onPressed,
    this.isActive = true,
    this.padding,
    this.iconSize,
    this.showActiveText = false,
  });

  final VoidCallback? onPressed;
  final bool isActive;
  final EdgeInsetsGeometry? padding;
  final double? iconSize;
  final bool showActiveText;

  @override
  Widget build(BuildContext context) {
    return Btn(
      btnType: BtnType.TEXT,
      padding: padding,
      onPressed: onPressed,
      child: Row(
        children: [
          if (showActiveText && isActive) 'filtering'.text.colorAction(context).make().pRight4(),
          if (isActive)
            Assets.icons.filterLineActive.svg(
              height: iconSize,
              width: iconSize,
            )
          else
            Assets.icons.filterLine.svg(
              height: iconSize,
              width: iconSize,
            ),
        ],
      ),
    );
  }
}

class BtnFilterData<T> extends StatelessWidget {
  const BtnFilterData({
    super.key,
    this.onPressed,
    this.padding,
    this.iconSize,
    this.showActiveText = false,
  });

  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final double? iconSize;
  final bool showActiveText;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterDataCubit<T>, FilterDataState<T>>(
      builder: (context, state) {
        return BtnFilter(
          onPressed: onPressed,
          isActive: context.read<FilterDataCubit<T>>().isActive,
          padding: padding,
          iconSize: iconSize,
          showActiveText: showActiveText,
        );
      },
    );
  }
}
