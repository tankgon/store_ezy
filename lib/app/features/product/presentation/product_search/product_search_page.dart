import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/presentation/widgets/btn/btn_filter.dart';
import 'package:mulstore/app/features/product/presentation/product_search/cubit/product_search_cubit.dart';
import 'package:mulstore/app/features/product/presentation/product_search/product_search_body.dart';
import 'package:mulstore/app/features/shopping_cart/presentation/widget/shopping_cart_btn.dart';

import 'package:mulstore/app/features/product/presentation/product_search/widget/product_search_bar.dart';

@RoutePage()
class ProductSearchPage extends StatelessWidget {
  const ProductSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductSearchCubit(),
      child: DefaultStatusConsumer<ProductSearchCubit, ProductSearchState>(
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              AppAppBarSliver(
                title: const ProductSearchBar(),
                args: AppBarArgs(
                  titleSpacing: 0,
                  actions: [
                    Gaps.hGap8,
                    BtnFilter(
                      onPressed: () {},
                    ),
                    const ShoppingCartBtn(),
                    Gaps.hGap4,
                  ].withDivider(Gaps.hGap4, showLast: true),
                ),
              ),
              SliverFillRemaining(child: ProductSearchBody()),
            ],
          ),
        ),
      ),
    );
  }
}
