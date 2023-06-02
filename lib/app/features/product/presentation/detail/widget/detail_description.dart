import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/presentation/widgets/container/show_more/more_btn.dart';

class ProductDetailDescription extends StatelessWidget {
  const ProductDetailDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer.content(
      title: LocaleKeys.common_Desciption.tr(),
      child: ShowMoreText(
        moreBtnBuilder: (showMore, onTap) {
          return AppMoreBtn(
            onPressed: onTap,
            isMore: showMore,
          );
        },
        content:
            'Phẳng, làm mềm và làm mờ các loại sẹo Gel trị sẹo QDerma là sản phẩm có tác dụng giúp làm phẳng, làm mềm và làm mờ các loại sẹo, hỗ trợ hạn chế tình trạng viêm da, đồng thời còn cân bằng độ ẩm trong da, giúp vùng da bị tổn thương chống lại tia UV từ ánh nắng mặt trời.',
        maxLines: 5,
        textStyle: context.themeText.body.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
