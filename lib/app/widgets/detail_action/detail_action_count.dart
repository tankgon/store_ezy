import 'package:ez_store/all_file/all_file.dart';

class DetailActionCount extends StatelessWidget {
  const DetailActionCount(
      {Key? key, this.commentCount, this.shareCount, this.likeCount})
      : super(key: key);

  final num? commentCount;
  final num? shareCount;
  final num? likeCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        '${commentCount.toCountStr()} ${'comments'.tr}'
            .text
            .textS
            .colorGray5(context)
            .make(),
        Gaps.spacer,
        if (likeCount.toNumWithZero > 0)
          '${likeCount.toCountStr()} ${'like'.tr}'
              .text
              .textS
              .colorGray5(context)
              .make(),
        if (shareCount.toNumWithZero > 0)
          '${shareCount.toCountStr()} ${'share'.tr}'
              .text
              .textS
              .colorGray5(context)
              .make().pLeftDefault(),
      ],
    ).pDefault();
  }
}
