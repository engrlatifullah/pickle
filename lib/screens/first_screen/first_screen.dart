import 'package:flutter/material.dart';
import 'package:pickle/screens/auth/signup_screen.dart';
import 'package:pickle/themes/app_colors.dart';
import 'package:pickle/utils/navigations.dart';
import 'package:pickle/widgets/buttons.dart';
import 'package:pickle/widgets/logo_widget.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

import '../../utils/app_text_style.dart';
import '../auth/login_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

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
            PrimaryButton(
                title: "Register Yourself",
                onPressed: () {
                  navigateWithPush(
                      context: context, pageName: const SignUpScreen());
                }),
            const SizedBox(height: 10),
            PrimaryButton(
                title: "Login To your Account",
                onPressed: () {
                  navigateWithPush(
                    context: context,
                    pageName: const LoginScreen(),
                  );
                }),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    width: double.infinity,
                    color: AppColors.primaryGrey.withOpacity(0.4),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "OR",
                  style: AppTextStyles.mediumStyle
                      .copyWith(color: AppColors.primaryGrey.withOpacity(0.4)),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    height: 1,
                    width: double.infinity,
                    color: AppColors.primaryGrey.withOpacity(0.4),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SocialLoginButton(
              buttonType: SocialLoginButtonType.google,
              onPressed: () {},height: 50,
            ),
            SizedBox(height: 10),
            SocialLoginButton(
              buttonType: SocialLoginButtonType.facebook,
              onPressed: () {},height: 50,
            ),
            SizedBox(height: 10),
            SocialLoginButton(
              buttonType: SocialLoginButtonType.apple,
              onPressed: () {},height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
