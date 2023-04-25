import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/auth/presentation/forgot_password/change_password/change_password_page.dart';
import 'package:mulstore/app/features/auth/presentation/forgot_password/main/forgot_password_page.dart';
import 'package:mulstore/app/features/auth/presentation/login/login_page.dart';
import 'package:mulstore/app/features/auth/presentation/otp_confirm/auth_otp_confirm_page.dart';
import 'package:mulstore/app/features/auth/presentation/sign_up/sign_up_page.dart';

const authRoutes = [
    AutoRoute(
      path: 'sign-up',
      page: SignUpPage,
    ),
    AutoRoute(
      path: 'login',
      page: LoginPage,
    ),
    AutoRoute(
      path: 'otp-confirm',
      page: AuthOtpConfirmPage,
    ),
    AutoRoute(
      path: 'forgot-password',
      page: ForgotPasswordPage,
    ),
    AutoRoute(
      path: 'change-password',
      page: ChangePasswordPage,
    ),
];