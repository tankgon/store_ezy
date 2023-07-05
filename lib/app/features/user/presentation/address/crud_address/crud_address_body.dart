import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/presentation/widgets/text/app_text_required.dart';
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
          AppTextRequired(
            child: 'Địa chỉ'.tr().text.titleMedium(context).make(),
          ),
          AppTextFieldReactive(
            formControlName: UserAddressEntity.fullNameKey,
          ),
          AppTextFieldReactive(
            formControlName: UserAddressEntity.fullAddressKey,
            minLines: 3,
            maxLines: 4,
            decoration: AppTextFieldTheme.primaryStyle(context).copyWith(),
          ),
          AppTextRequired(
            child: 'Loại địa chỉ'.tr().text.titleMedium(context).make(),
          ),
          Row(
            children: [
              AppRadioReactive<AddressType>(
                formControlName: UserAddressEntity.addressTypeKey,
                value: AddressType.home,
                label: AddressType.home.displayValue.tr(),
              ).expand(),
              Gaps.hGap16,
              AppRadioReactive<AddressType>(
                formControlName: UserAddressEntity.addressTypeKey,
                value: AddressType.office,
                label: AddressType.office.displayValue.tr(),
              ).expand(),
            ],
          ),
          const AppDivider.thin(),
          AppButtonText(
            color: context.themeColor.error,
            label: 'Xoá địa chỉ'.tr(),
            leading: Icon(
              PhosphorIcons.trash,
              color: context.themeColor.error,
            ),
            onPressed: () {},
          ).objectCenter(),
        ].withDivider(Gaps.vGap8),
      ).pxDefault(),
    );
  }
}
