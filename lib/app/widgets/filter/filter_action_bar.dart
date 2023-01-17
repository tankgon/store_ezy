import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/filter/bloc/filter_data_cubit.dart';

class FilterActionBar<T> extends StatelessWidget {
  const FilterActionBar({
    super.key,
    required this.onApplyPressed,
    required this.onCancelPressed,
    this.isSubmit = false,
    this.initial,
  });

  final VoidCallback onApplyPressed;
  final VoidCallback onCancelPressed;
  final bool isSubmit;
  final T? initial;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FilterDataCubit<T>>();
    return Row(
      children: [
        BlocBuilder<FilterDataCubit<T>, FilterDataState<T>>(
          builder: (context, state) {
            return Btn(
              btnType: BtnType.GRAY_PRIMARY,
              label: 'cancelFilter',
              onPressed: cubit.isActive ? () => _clear(context) : null,
            );
          },
        ).expand(),
        Gaps.hGap10,
        BlocBuilder<FilterDataCubit<T>, FilterDataState<T>>(
          builder: (context, state) {
            return Btn(
              label: 'apply',
              matchParent: true,
              isSubmit: isSubmit,
              onPressed: state.hasChange ? () => _onApply(context) : null,
            );
          },
        ).expand(),
      ],
    );
  }

  void _clear(BuildContext context) {
    context.read<FilterDataCubit<T>>().reset();
    onCancelPressed?.call();
  }

  Future<void> _onApply(BuildContext context) async {
    onApplyPressed();
  }
}
