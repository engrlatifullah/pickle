import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pickle/screens/auth/choice_of_interest.dart';
import 'package:pickle/screens/auth/login_screen.dart';
import 'package:pickle/themes/app_colors.dart';
import 'package:pickle/utils/globel.dart';
import 'package:pickle/utils/navigations.dart';
import 'package:pickle/widgets/buttons.dart';
import 'package:pickle/widgets/custom_text_input.dart';
import 'package:pickle/widgets/logo_widget.dart';

import '../../utils/app_text_style.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  File ? image;

  pickImage() async {
    try {
      final img = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (img != null) {
        setState(() {
          image = File(img.path);
        });
      }
    }
    catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Center(child: LogoWidget()),
              const SizedBox(height: 10),
              Center(
                child: InkWell(
                    onTap: () => pickImage(),
                    child: image == null ? const CircleAvatar(radius: 60,
                        child: Icon(
                            Icons.camera_alt, color: AppColors.primaryWhite,
                            size: 30)) : CircleAvatar(
                      radius: 50, backgroundImage: FileImage(image!),)),
              ),
              const SizedBox(height: 20),
              CustomTextInput(
                  controller: fullNameController, title: "Full Name"),
              const SizedBox(height: 15),
              CustomTextInput(controller: fullNameController, title: "Email"),
              const SizedBox(height: 15),
              CustomTextInput(
                  controller: fullNameController, title: "Password"),
              const SizedBox(height: 15),
              PrimaryButton(title: "Next", onPressed: () {
                navigateWithPush(
                    context: context, pageName: ChoiceOfInterest());
              },),
              const SizedBox(height: 15),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  navigateWithPush(
                    context: context,
                    pageName: const LoginScreen(),
                  );
                },
                child: const Center(
                  child: Text("Already have an Account? Login"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
