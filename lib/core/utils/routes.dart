import 'package:go_router/go_router.dart';
import 'package:relaq_ai/features/login/presentation/views/login_view.dart';
import 'package:relaq_ai/features/message/presentation/views/message_view.dart';
import 'package:relaq_ai/features/signUp/presentation/views/sign_up_view.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kLoginView = '/loginView';
  static const kSignUpView = '/signUpView';
  static const kMessage = '/message';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: kLoginView,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: kSignUpView,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: kMessage,
     builder: (context, state) => const MessageView(),
    )
  ]);
}
