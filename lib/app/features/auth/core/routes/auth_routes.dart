import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/presentation/forgot_password/change_password/change_password_page.dart';
import 'package:ez_store/app/features/auth/presentation/forgot_password/main/forgot_password_page.dart';
import 'package:ez_store/app/features/auth/presentation/login/login_page.dart';
import 'package:ez_store/app/features/auth/presentation/otp_confirm/auth_otp_confirm_page.dart';
import 'package:ez_store/app/features/auth/presentation/sign_up/sign_up_page.dart';

const authRoutes = [
    AutoRoute(
      path: 'SignUp',
      page: SignUpPage,
    ),
    AutoRoute(
      path: 'Login',
      page: LoginPage,
    ),
    AutoRoute(
      path: 'OTPConfirm',
      page: AuthOtpConfirmPage,
    ),
    AutoRoute(
      path: 'ForgotPassword',
      page: ForgotPasswordPage,
    ),
    AutoRoute(
      path: 'ChangePassword',
      page: ChangePasswordPage,
    ),
];