import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/self.dart';

class CrudAddressBody extends StatelessWidget {
  const CrudAddressBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody.withSpacing(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          'Người nhận'.tr().text.titleMedium(context).make(),
          AppTextFieldReactive(
            formControlName: UserAddressEntity.fullNameKey,
          ),
          'Tên địa chỉ'.tr().text.titleMedium(context).make(),
          AppTextFieldReactive(
            formControlName: UserAddressEntity.fullNameKey,
          ),
        ].withDivider(Gaps.vGap8),
      ).pxDefault(),
    );
  }
}
