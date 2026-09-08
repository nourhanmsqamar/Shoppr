import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppr/Login/LoginCubit.dart';
import 'package:shoppr/Login/LoginState.dart';

import '../Core/widgets/CustomButton.dart';
import '../Core/widgets/CustomTextField.dart';
import '../SignUp/SignUpScreen.dart';
import '../NavigationBar/NavigationScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///===============wrap with blocprovider=======================
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,

        body: BlocConsumer<LoginCubit, LoginState>(
          ///=======================listener=========================
          listener: (context, state) {
            if (state is LoginSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.green,
                  content: Text(
                    "SUCCESS LOGIN",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );

              ///================go to home========================
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const NavigationScreen(),
                ),
              );
            }

            ///====================failure==========================
            if (state is LoginFailure) {
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

          ///========================builder========================
          builder: (context, state) {
            ///================instance==============================
            final cubit = context.read<LoginCubit>();

            ///================loading===============================
            if (state is LoginLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            ///======================================================

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 40,
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    ///====================banner====================
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/Signup.png",
                        height: 140,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),

                    ///=============================================

                     SizedBox(height: 45),

                    ///====================email=====================
                    CustomTextField(
                      controller: cubit.emailControl,
                      title: "Email",
                      hintText: "Enter your Email",
                    ),

                    ///=============================================

                     SizedBox(height: 16),

                    ///====================password==================
                    CustomTextField(
                      controller: cubit.passwordControl,
                      title: "Password",
                      hintText: "Enter your Password",
                      isPassword: true,
                      suffixIcon: const Icon(
                        Icons.visibility_off_outlined,
                        color: Color(0xff999999),
                      ),
                    ),

                    ///=============================================

                    const SizedBox(height: 10),

                    ///================remember + forgot============
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                          activeColor: const Color(0xff5E5CE6),
                        ),

                        const Text(
                          "Remember me",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),

                        const Spacer(),

                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot password?",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),

                    ///=============================================

                    const SizedBox(height: 5),

                    ///====================login button=============
                    CustomButton(
                      text: "Login",
                      onPressed: () {
                        cubit.login();
                      },
                    ),

                    ///=============================================

                    const SizedBox(height: 15),

                    ///====================signup===================
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            color: Color(0xff999999),
                            fontSize: 14,
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                const SignUpScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),

                    ///=============================================

                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}