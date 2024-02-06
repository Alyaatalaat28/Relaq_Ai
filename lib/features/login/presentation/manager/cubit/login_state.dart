part of 'login_cubit.dart';

sealed class LoginState {}

final class LoginInitial extends LoginState {}
class LoginLoadingState extends LoginState{}

class LoginSuccessState extends LoginState{}

class LoginErrorState extends LoginState{}

class GoogleUserSignInSuccessState extends LoginState{}

class  GoogleUserSignInErrorState extends LoginState{}

class ResetPasswordSuccessState extends LoginState{}

class ResetPasswordErrorState extends LoginState{}
