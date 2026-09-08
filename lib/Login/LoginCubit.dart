import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'LoginState.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final firebaseAuth = FirebaseAuth.instance;


  TextEditingController emailControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();

  Future<void> login() async {
    emit(LoginLoading());

    try {

      await firebaseAuth.signInWithEmailAndPassword(
        email: emailControl.text,
        password: passwordControl.text,
      );

      emit(LoginSuccess());

    } on FirebaseAuthException catch (e) {
      emit(LoginFailure(e.message ?? "Login failed"));
    } catch (e) {
      emit(LoginFailure(e.toString()));
    }
  }
}