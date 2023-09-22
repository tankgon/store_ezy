import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/message/presentation/search_message/search_message_body.dart';

class SearchMessage extends StatelessWidget {
  const SearchMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: IgnorePointer(
          child: AppTextField(
            textInputAction: TextInputAction.search,
            decoration: AppTextFieldTheme.greyStyle(
              context,
            ).copyWith(
              border: OutlineInputBorder(
                borderRadius: Dimens.rad_border_circular,
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: Dimens.rad_border_circular,
                borderSide: context
                        .theme.inputDecorationTheme.focusedBorder?.borderSide ??
                    BorderSide.none,
              ),
              hintText: 'Nhà cung cấp, mã đơn, tên sản phẩm',
              prefixIcon: const Icon(PhosphorIcons.magnifying_glass).pl4(),
            ),
          ),
        ),
        args: const AppBarArgs(
          elevation: 0,
        ),
      ),
      body: const SearchMessageBody(),
    );
  }
}
