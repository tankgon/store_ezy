import 'package:app_ui_kit/components/tile/app_add_phone_title.dart';
import 'package:app_ui_kit/components/tile/app_phone_title.dart';
import 'package:mulstore/all_file/all_file.dart';
import '../../../domain/entity/user_fake.dart';

@RoutePage()
class PhoneInfo extends StatelessWidget {
  const PhoneInfo({
    super.key,
    // required this.phone,
    this.padding,
    required this.fetchListData,
  });

  // final List<Object>? phone;
  final EdgeInsets? padding;

  final PagingListFetchFunc<UserphoneT> fetchListData;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppAppBar(
        title: 'Số điện thoại'.tr(),
      ),
      body:
          // Column(
          //   children: [

          //     AppPhoneTile(
          //       title: '0989120350'.tr(),
          //       onPressed: () {},
          //     ),
          //     AppPhoneTile(
          //       title: '0338091539'.tr(),
          //       onPressed: () {},
          //     ),
          //     AppAddPhoneTile(
          //       title: 'Thêm số điện thoại'.tr(),
          //       onPressed: () {},
          //     ),
          //   ].withDivider(const AppDivider.thin().pxDefault()),
          // ),

          Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height / 3,
            child: PagingList<UserphoneT>(
              itemBuilder: (context, item, index) => AppPhoneTile(
                title: item.phoneT,
                onPressed: () {},
              ),
              padding: padding ??
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              separatorBuilder: (context, index) => const SizedBox(width: 8),
              fetchListData: fetchListData,
            ),
          ),
          SizedBox(
            height: size.height / 20,
            child: AppAddPhoneTile(
              title: 'Thêm số điện thoại'.tr(),
              onPressed: () {},
            ).expand(),
          ),
        ],
      ),
    );
  }
}
