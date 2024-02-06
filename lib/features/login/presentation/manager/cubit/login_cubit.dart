

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context)=>BlocProvider.of(context);

  // login with email and password
void userLogin({
  required String email,
  required String password,
}) {
  emit(LoginLoadingState());
  FirebaseAuth.instance
      .signInWithEmailAndPassword(
    email: email,
    password: password,
  )
      .then((value) {
    if (kDebugMode) {
      print(value.user!.uid);
    }
    emit(LoginSuccessState());
  }).catchError((error) {
    emit(LoginErrorState());
  });
}
// login with google
GoogleSignIn googleSignIn=GoogleSignIn();

Future<UserCredential?> signInWithGoogle()async{
  try{
    final GoogleSignInAccount?  googleUser=await googleSignIn.signIn();
    final GoogleSignInAuthentication  googleAuth=await googleUser!.authentication;
    final OAuthCredential credential =GoogleAuthProvider.credential(
      accessToken:googleAuth.accessToken ,
      idToken: googleAuth.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential).
    then((value) {
          emit(GoogleUserSignInSuccessState());
          return null;
    });
  }catch(error){
    if (kDebugMode) {
      print(error.toString());
    }
    emit(GoogleUserSignInErrorState());
    return null;
  }
}
//reset password
Future<void> resetPassword(String email) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    emit(ResetPasswordSuccessState());
  } catch (e) {
    if (kDebugMode) {
      print('Error sending password reset email: $e');
    }
    emit(ResetPasswordErrorState());
  }
}
}
