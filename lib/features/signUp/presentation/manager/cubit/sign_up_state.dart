part of 'sign_up_cubit.dart';


sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}
class SignUpLoadingState extends SignUpState{}

class SignUpSuccessState extends SignUpState{
}
class SignUpErrorState extends SignUpState{
}

class CreateUserSuccessState extends SignUpState{
}
class CreateUserErrorState extends SignUpState{
}

class GoogleUserSignUpSuccessState extends SignUpState{
}
class GoogleUserSignUpErrorState extends SignUpState{
}
