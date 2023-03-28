import 'package:ez_store/all_file/all_file.dart';

class DefaultStatusConsumer<C extends RequestCubit<S>, S extends RequestState> extends StatelessWidget {
  const DefaultStatusConsumer({
    super.key,
    required this.child,
    this.onSuccess,
    this.onLoading,
    this.onError,
    this.showLoadingIndicator = true,
  });

  final Widget child;

  final bool showLoadingIndicator;

  final VoidCallback? onSuccess;
  final VoidCallback? onLoading;
  final VoidCallback? onError;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<C, S>(
      listener: _onStatusChange,
      builder: (context, state) {
        return AppLoading(
          isLoading: showLoadingIndicator && state.status == ItemDefaultStatus.loading,
          child: child,
        );
      },
    );
  }

  void _onStatusChange(BuildContext context, RequestState state) {
    if (state.status == ItemDefaultStatus.error) {
      if (onError != null) {
        onError?.call();
      } else {
        DialogUtils.showErrorDialog(
          context: context,
          content: state.error.getServerErrorMsg(),
          error: state.error,
        );
      }
    } else if (state.status == ItemDefaultStatus.success) {
      onSuccess?.call();
    }
  }
}
