import 'package:flutter/material.dart';

import '../../widgets/buttons.dart';
import '../../widgets/custom_text_input.dart';
import '../../widgets/logo_widget.dart';
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Center(child: LogoWidget()),
            const SizedBox(height: 20),
            CustomTextInput(controller: emailController, title: "Email"),
            SizedBox(height: 20),
            PrimaryButton(title: "Verify",onPressed: (){
            },),
          ],
        ),
      ),
    );
  }
}
