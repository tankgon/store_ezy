import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/presentation/sign_up/sign_up_body.dart';
import 'package:ez_store/app/features/auth/presentation/sign_up/cubit/sign_up_cubit.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit()..fetchItem(),
      child: Builder(builder: (context) {
        return BlocListener<SignUpCubit, SignUpState>(
          listener: _onStateChanged,
          child: Scaffold(
            appBar: AppAppBar(
              title: '',
              args: AppBarArgs(
                elevation: 0,
              ),
            ),
            body: const _PageBodyLoading(
              child: SignUpBody(),
            ),
          ),
        );
      }),
    );
  }

  void _onStateChanged(BuildContext context, SignUpState state) {
    if (state.status == ItemDetailStatus.error) {
      DialogUtils.showMaterialDialog(context: context, content: state.errorMsg);
    }
  }
}

class _PageBodyLoading extends StatelessWidget {
  const _PageBodyLoading({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        // if (state.status == ItemDetailStatus.error) {
        //   return SimpleErrorText(errorMsg: state.errorMsg ?? '');
        // }
        final isLoading = state.status == ItemDetailStatus.loading || state.status == ItemDetailStatus.initial;

        return child;
      },
    );
  }
}
