import 'package:flutter/material.dart';
import 'package:pickle/screens/auth/signup_screen.dart';
import 'package:pickle/screens/first_screen/first_screen.dart';
import 'package:pickle/themes/app_colors.dart';
import 'package:pickle/utils/navigations.dart';
import 'package:pickle/widgets/buttons.dart';
import 'package:pickle/widgets/custom_text_input.dart';
import 'package:pickle/widgets/logo_widget.dart';

import '../bottom_nav_bar/bottom_nav_bar.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(child: LogoWidget()),
            const SizedBox(height: 20),
            CustomTextInput(controller: emailController, title: "Email"),
            const SizedBox(height: 15),
            CustomTextInput(controller: passwordController, title: "Password"),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: (){
                  navigateWithPush(context: context,pageName: const ForgotPasswordScreen());
                }, child: const Text("Forgott Password?"),)),
            const SizedBox(height: 20),
             PrimaryButton(title: "Login",onPressed: (){
              navigateWithPush(context: context,pageName: const BottomNavBar());
            },),
            const SizedBox(height: 15),
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                navigateWithPush(
                  context: context,
                  pageName: const SignUpScreen(),
                );
              },
              child: const Center(
                child: Text("Don't have an Account? SignUp"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
