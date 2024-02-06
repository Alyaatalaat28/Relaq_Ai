import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:relaq_ai/features/signUp/data/user_model.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
 static SignUpCubit get(context)=>BlocProvider.of(context);
  //create user
  void craeteUser({
    required String email,
    required String uId}){
      UserModel userModel=UserModel(
        email:email ,
        uId:uId);

        FirebaseFirestore.instance.collection('users').doc(uId).set(
          userModel.toMap()).
          then((value) {
            emit(CreateUserSuccessState());
          }).
          catchError((error){
            if (kDebugMode) {
              print(error.toString());
            }
           emit(CreateUserErrorState());
          });
  }

  //signUp with email and password
void signUPWithEmailAndPassword({
    required String email,
    required String password,
}){
  emit(SignUpLoadingState());
  FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password).
  then((value) {
    craeteUser(
      email: email,
      uId: value.user!.uid);
  } ).
  catchError((error){
    if (kDebugMode) {
      print(error.toString());
    }
    emit(SignUpErrorState());
  });

} 

//SignUp with google
GoogleSignIn googleSignIn=GoogleSignIn();

Future<UserCredential?> signUpWithGoogle()async{
  try{
    final GoogleSignInAccount?  googleUser=await googleSignIn.signIn();
    final GoogleSignInAuthentication  googleAuth=await googleUser!.authentication;
    final OAuthCredential credential =GoogleAuthProvider.credential(
      accessToken:googleAuth.accessToken ,
      idToken: googleAuth.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential).
    then((value) {
          emit(GoogleUserSignUpSuccessState());
          return null;
    });
  }catch(error){
    if (kDebugMode) {
      print(error.toString());
    }
    emit(GoogleUserSignUpErrorState());
    return null;
  }
}


}
