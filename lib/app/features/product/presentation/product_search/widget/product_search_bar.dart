import 'package:mulstore/all_file/all_file.dart';

class ProductSearchBar extends StatelessWidget {
  const ProductSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: AppTextField(
        textInputAction: TextInputAction.search,
        decoration: AppTextFieldTheme.primaryStyle(
          context,
        ).copyWith(
          border: OutlineInputBorder(
            borderRadius: Dimens.rad_border_circular,
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: Dimens.rad_border_circular,
            borderSide: context.theme.inputDecorationTheme.focusedBorder!.borderSide,
          ),
          // contentPadding: EdgeInsets.zero,
          hintText: 'Dược phẩm'.tr(),
          prefixIcon: const Icon(PhosphorIcons.magnifying_glass).pl4(),
        ),
      ),
    );
  }
}
