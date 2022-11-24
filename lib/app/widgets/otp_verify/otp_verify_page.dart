import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/otp_verify/otp_verify_body.dart';
import 'package:ez_store/app/widgets/otp_verify/cubit/otp_verify_cubit.dart';

class OtpVerifyPage extends StatelessWidget {

  const OtpVerifyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpVerifyCubit()..fetchItem(),
      child: Builder(
          builder: (context) {
            return BlocListener<OtpVerifyCubit, OtpVerifyState>(
              listener: _onStateChanged,
              child: Scaffold(
                appBar: BaseAppBar(
                  title: 'OTP Verify',
                ),
                body: const _PageBodyLoading(
                  body: OtpVerifyBody(),
                ),
              ),
            );
          }
      ),
    );
  }    

  void _onStateChanged(BuildContext context, OtpVerifyState state) {
    if (state.status == ItemDetailStatus.error) {
      DialogUtils.showAlertDialog(context, content: state.errorMsg);
    }
  }
}

class _PageBodyLoading extends StatelessWidget {
  const _PageBodyLoading({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpVerifyCubit, OtpVerifyState>(
      builder: (context, state) {
        if (state.status == ItemDetailStatus.error) {
          return SimpleErrorText(errorMsg: state.errorMsg ?? '');
        } else if (state.status == ItemDetailStatus.initial || state.status == ItemDetailStatus.loading) {
          return AppLoading.defaultLoadingCenter();
        }

        return body;
      },
    );
  }
}
