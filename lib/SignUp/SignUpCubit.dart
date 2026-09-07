import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'SignUPState.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(): super(RegisterInitial());

  ///=============object firebaseAuth===============
  final firebaseAuth = FirebaseAuth.instance;
  ///========================================

  ///=================controller========
  TextEditingController emailControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();
  TextEditingController confirmPasswordControl = TextEditingController();
  ///===============================

  Future<void> signup() async {

    ///==========check password match====================
    if (passwordControl.text != confirmPasswordControl.text) {
      emit(RegisterFailure("Passwords do not match"));
      return;
    }
    ///==================================================

    emit(RegisterLoading());

    try {
      ///==========create user in firebase=================
      await firebaseAuth.createUserWithEmailAndPassword(
        email: emailControl.text,
        password: passwordControl.text,
      );
      emit(RegisterSuccess());
      ///==================================================

      ///==========handel error====================
    } on FirebaseAuthException catch (e) {
      emit(RegisterFailure(e.toString()));
    } catch (e) {
      emit(RegisterFailure(e.toString()));
    }
  }
}