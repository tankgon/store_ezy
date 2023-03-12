import 'package:ez_store/all_file/all_file.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: AppTextField(
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
          hintText: LocaleKeys.common_Search.tr(),
          prefixIcon: const Icon(PhosphorIcons.magnifying_glass).pl4(),
          suffixIcon: const Icon(PhosphorIcons.qr_code),
        ),
      ),
    );
  }
}
