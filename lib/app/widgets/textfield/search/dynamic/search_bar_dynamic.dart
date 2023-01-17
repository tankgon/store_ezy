import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/animation/expanded_widget.dart';
import 'package:ez_store/app/widgets/textfield/search/dynamic/search_bar_dynamic_cubit.dart';
import 'package:ez_store/app/widgets/textfield/search/search_bar.dart';
import 'package:flutter/cupertino.dart';

class AppBarWithDynamicSearch extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWithDynamicSearch({
    super.key,
    this.title,
    this.args,
    this.titleArgs,
  });

  final Object? title;
  final BaseAppBarArgs? args;
  final BaseAppBarTitleArgs? titleArgs;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBarDynamicCubit, SearchBarDynamicState>(
      builder: (context, state) {
        final appBarArgs = !state.isActive
            ? args
            : (args ?? const BaseAppBarArgs()).copyWith(
                elevation: 0,
              );
        return BaseAppBar(
          title: title,
          args: appBarArgs,
          titleArgs: titleArgs,
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class SearchBarDynamicWrapper extends StatelessWidget {
  const SearchBarDynamicWrapper({
    Key? key,
    required this.child,
    this.padding,
    this.onSearch,
  }) : super(key: key);

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final void Function(BuildContext context, String? value)? onSearch;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocConsumer<SearchBarDynamicCubit, SearchBarDynamicState>(
          listenWhen: (previous, current) => previous.searchText != current.searchText,
          listener: (context, state) {
            if (state.isActive && state.searchText.isNotNullOrEmpty() == true) {
              onSearch?.call(context, state.searchText);
            } else if (state.isActive && state.searchText.isNullOrEmpty() != true) {
              onSearch?.call(context, null);
            } else {
              onSearch?.call(context, null);
            }
          },
          buildWhen: (previous, current) => previous.isActive != current.isActive,
          builder: (context, state) {
            return ExpandedWidget(
              expand: state.isActive,
              child: Column(
                children: [
                  Padding(
                    padding: padding ?? const EdgeInsets.fromLTRB(16, 0, 16, 8),
                    child: Row(
                      children: [
                        const SearchBarDynamic().expand(),
                        CardCupertinoEffect(
                          child: 'cancel'.text.make().pLeft8().py12(),
                          onPressed: () => context.read<SearchBarDynamicCubit>().activeChange(isActive: false),
                        ).pLeft8()
                      ],
                    ),
                  ),
                  Gaps.divider
                ],
              ),
            );
          },
        ),
        child.expand(),
      ],
    );
  }
}

class SearchBarDynamic extends StatefulWidget {
  const SearchBarDynamic({
    super.key,
    this.triggerSearchOnClear = true,
    this.onClearPressed,
    this.backgroundColor,
    this.padding,
  });

  final EdgeInsets? padding;
  final bool triggerSearchOnClear;

  final VoidCallback? onClearPressed;
  final Color? backgroundColor;

  static const double height = 40;

  @override
  State<SearchBarDynamic> createState() => _SearchBarDynamicState();
}

class _SearchBarDynamicState extends State<SearchBarDynamic> {
  late final FocusNode _focusNode;
  late final TextEditingController? controller;

  @override
  void initState() {
    _focusNode = FocusNode();
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SearchBarDynamicCubit, SearchBarDynamicState>(
      listenWhen: (previous, current) => previous.searchText != current.searchText,
      listener: (context, state) {
        if (state.searchText != controller?.text) {
          controller?.text = state.searchText ?? '';
        }
      },
      child: BlocConsumer<SearchBarDynamicCubit, SearchBarDynamicState>(
        listenWhen: (previous, current) => previous.isActive != current.isActive,
        listener: (context, state) {
          if (state.isActive && !_focusNode.hasFocus) {
            _focusNode.requestFocus();
          }
          if (!state.isActive && _focusNode.hasFocus) {
            _focusNode.unfocus();
          }
        },
        buildWhen: (previous, current) {
          return previous.isActive != current.isActive;
        },
        builder: (context, state) {
          return Padding(
            padding: widget.padding ?? EdgeInsets.zero,
            child: SearchBar(
              focusNode: _focusNode,
              controller: controller,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              borderWidth: 0,
              onSearch: (context, value) {
                context.read<SearchBarDynamicCubit>().onSearch(value);
              },
              triggerSearchOnClear: widget.triggerSearchOnClear,
              backgroundColor: widget.backgroundColor,
            ),
          );
        },
      ),
    );
  }
}

class BtnSearchBarDynamic extends StatelessWidget {
  const BtnSearchBarDynamic({
    super.key,
    this.color,
    this.padding,
  });

  final Color? color;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBarDynamicCubit, SearchBarDynamicState>(
      buildWhen: (previous, current) => previous.isActive != current.isActive,
      builder: (context, state) {
        return Opacity(
          opacity: state.isActive ? 0 : 1,
          child: FadeIn(
            duration: const Duration(milliseconds: 700),
            child: CardCupertinoEffect(
              child: Padding(
                padding: padding ?? Dimens.edge_XS2,
                child: Icon(
                  CupertinoIcons.search,
                  color: color ?? context.theme.primaryColor,
                ),
              ),
              onPressed: () {
                context.read<SearchBarDynamicCubit>().activeChange(
                      isActive: true,
                    );
              },
            ),
          ),
        );
      },
    );
  }
}
