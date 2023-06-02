import 'package:mulstore/all_file/all_file.dart';

class DefaultStatusConsumer<C extends RequestCubit<S>, S extends RequestState>
    extends StatelessWidget {
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

  final ValueChanged<S>? onSuccess;
  final VoidCallback? onLoading;
  // Return false if not handled
  final bool Function(Object? value)? onError;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<C, S>(
      listenWhen: (previous, current) {
        if (current.status == ItemDefaultStatus.error &&
            current.error != current.error) {
          return true;
        }
        return previous.status != current.status;
      },
      listener: _onStatusChange,
      builder: (context, state) {
        return AppLoading(
          isLoading:
              showLoadingIndicator && state.status == ItemDefaultStatus.loading,
          child: child,
        );
      },
    );
  }

  void _onStatusChange(BuildContext context, RequestState state) {
    if (state.status == ItemDefaultStatus.error) {
      final onErrorHandled = onError?.call(state.error) ?? false;
      if (!onErrorHandled) {
        DialogUtils.showErrorDialog(
          context: context,
          content: context.getAppErrorMsg(state.error),
          error: state.error,
        );
      }
    } else if (state.status == ItemDefaultStatus.success) {
      onSuccess?.call(state as S);
    }
  }
}