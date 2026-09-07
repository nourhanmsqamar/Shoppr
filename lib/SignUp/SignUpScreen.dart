import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppr/SignUp/SignUPState.dart';
import 'package:shoppr/SignUp/SignUpCubit.dart';

import '../Core/widgets/CustomButton.dart';
import '../Core/widgets/CustomTextField.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///===============wrap with blocprovider=======================
    return BlocProvider(
  create: (context) => RegisterCubit(),
  child: Scaffold(
      backgroundColor: Colors.white,
      body:BlocConsumer<RegisterCubit, RegisterState>(
  listener: (context, state) {
    if (state is RegisterSuccess) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.green,
          content: Text(
            "SUCCESS CREATED ACCOUNT",
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }
    if (state is RegisterFailure) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            state.errMsg,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      );
    }



  },
  builder: (context, state) {
    ///================instance=============
    final cubit = context.read<RegisterCubit>();
    ///================loading=============
    if (state is RegisterLoading) {
      return Center(child: CircularProgressIndicator());
    }
    ///========================================


    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsGeometry.symmetric(horizontal: 20 ,vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/Signup.png" ),
              SizedBox(height: 32),
              ///====================emailfiled======================
              CustomTextField(
                controller: cubit.emailControl,
                title: "Email",
                hintText: "Enter your Email",
              ),
              ///=============================================
              const SizedBox(height: 16),
              ///====================Passwordfiled======================
              CustomTextField(
               controller: cubit.passwordControl,
                title: "Password",
                hintText: "Enter your Password",
                isPassword: true,
                suffixIcon: Icon(
                  Icons.visibility_off_outlined,
                  color: Color(0xff999999),
                ),
              ),
              ///===============================================
              const SizedBox(height: 16),
              ///====================confirmPasswordfiled======================
              CustomTextField(
               controller: cubit.confirmPasswordControl,
                title: "Confirm Password",
                hintText: "Confirm your Password",
                isPassword: true,
                suffixIcon: Icon(
                  Icons.visibility_off_outlined,
                  color: Color(0xff999999),
                ),
              ),
              ///=================================================
              ///===================signup buttuon===============
              SizedBox(height: 35,),
              CustomButton(text: "Create Account", onPressed: () {
                //cubit.signup();
              }),
             /// ====================================================

              SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                      color: Color(0xff999999),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                    Text(
                      'Log In ',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),

                ],
              ),

            ],
          ),
        ),
      );
  },
) ,
    ),
);
  }
}
