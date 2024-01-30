import 'package:go_router/go_router.dart';
import 'package:relaq_ai/features/forgot_password/presentation/views/forgot_password_view.dart';
import 'package:relaq_ai/features/home/presentaion/views/home_view.dart';
import 'package:relaq_ai/features/login/presentation/views/login_view.dart';
import 'package:relaq_ai/features/message/presentation/views/message_view.dart';
import 'package:relaq_ai/features/object_recognition/presentation/views/object_recognition_view.dart';
import 'package:relaq_ai/features/signUp/presentation/views/sign_up_view.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kLoginView = '/loginView';
  static const kSignUpView = '/signUpView';
  static const kMessage = '/message';
  static const kForgotPassword = '/ForgotPassword';
  static const kHomeView = '/HomeView';
  static const kObjectRecognitionView = '/ObjectRecognitionView';


  static final router = GoRouter(
    routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
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
    ),
     GoRoute(
      path: kForgotPassword,
     builder: (context, state) => const ForgotPasswordView(),
    ),
     GoRoute(
      path: kHomeView,
     builder: (context, state) => const HomeView(),
    ),
     GoRoute(
      path: kObjectRecognitionView,
     builder: (context, state) => const ObjectRecognitionView(),
    ),
    
    
  ]);
}
