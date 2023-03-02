import 'package:ez_store/all_file/all_file.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      decoration: AppTextFieldTheme.primaryStyle(
        context,
      ).copyWith(
        border: OutlineInputBorder(
          borderRadius: Dimens.rad_border_circular,
          borderSide: BorderSide.none,
        ),
        hintText: LocaleKeys.common_Search.tr(),
        prefixIcon: const Icon(PhosphorIcons.magnifying_glass).pLeft4(),
        suffixIcon: const Icon(PhosphorIcons.qr_code),
      ),
    );
  }
}
