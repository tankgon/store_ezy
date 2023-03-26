import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/home/presentation/feature_gird/cubit/home_feature_gird_cubit.dart';

class HomeFeatureGirdBody extends StatelessWidget {
  const HomeFeatureGirdBody({
    super.key,
    this.padding,
    this.rowCount = 1,
  });

  final EdgeInsetsGeometry? padding;
  final int rowCount;

  @override
  Widget build(BuildContext context) {
    const itemHeight = 92.0;
    const itemSpace = 24.0;
    final totalHeight = rowCount * itemHeight + (rowCount - 1) * itemSpace;
    return SizedBox(
      height: totalHeight,
      child: PagingGrid(
        padding: padding,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, item, index) => const HomeFeatureItem(),
        fetchListData: context.read<HomeFeatureGirdCubit>().fetchList,
        firstPageProgressIndicatorBuilder: (context) => const _HomeGirdLoading(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: rowCount,
          childAspectRatio: 1.23,
          mainAxisSpacing: 11,
          crossAxisSpacing: itemSpace,
        ),
      ),
    );
  }
}

class HomeFeatureItem extends StatelessWidget {
  const HomeFeatureItem({super.key});

  @override
  Widget build(BuildContext context) {
    final maxLines = 2;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const AppImg(
          'https://img.freepik.com/free-vector/medicine-bottles-cartoon-style_1308-88387.jpg?w=2000',
          fit: BoxFit.contain,
        ).expand(),
        SizedBox(
          height: context.textS * 1.3 * maxLines,
          child: 'Chăm sóc sức khỏe'.text.textS.center.medium.maxLines(maxLines).make(),
        ),
      ].withDivider(Gaps.vGap8),
    );
  }
}

class _HomeGirdLoading extends StatelessWidget {
  const _HomeGirdLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
