import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pickle/utils/app_text_style.dart';
import 'package:pickle/widgets/custom_text_input.dart';
import 'package:video_player/video_player.dart';

import '../../../../widgets/buttons.dart';
import '../../bottom_nav_bar.dart';

class CreatePoll extends StatefulWidget {
  const CreatePoll({
    Key? key,
  }) : super(key: key);

  @override
  State<CreatePoll> createState() => _CreatePollState();
}

class _CreatePollState extends State<CreatePoll> {
  String? selectedImage;
  TextEditingController questionController = TextEditingController();
  TextEditingController option1Controller = TextEditingController();
  TextEditingController option2Controller = TextEditingController();
  TextEditingController option3Controller = TextEditingController();
  TextEditingController option4Controller = TextEditingController();

  @override
  void dispose() {
    questionController.dispose();
    option1Controller.dispose();
    option2Controller.dispose();
    option3Controller.dispose();
    option4Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height:30),
              CustomTextInput(
                  controller: questionController, title: 'Write question'),
              const SizedBox(
                height: 20,
              ),
              selectedImage == null
                  ? PrimaryButton(
                      title: "Pick Image",
                      onPressed: () async {
                        await ImagePicker()
                            .pickImage(source: ImageSource.gallery)
                            .then((value) {
                          setState(() {
                            selectedImage = value!.path;
                          });
                        });
                      },
                    )
                  : SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Image.file(
                        File(selectedImage!),
                        fit: BoxFit.cover,
                      ),
                    ),
              const SizedBox(height: 10),
              Text("Option 1",style: AppTextStyles.regularStyle,),
              const SizedBox(height: 10),
              CustomTextInput(
                  controller: option1Controller, title: 'option 1'),
              const SizedBox(height: 15),
              Text("Option 2",style: AppTextStyles.regularStyle,),
              const SizedBox(height: 10),
              CustomTextInput(
                  controller: option2Controller, title: 'option 2'),
              const SizedBox(height: 15),
              Text("Option 3",style: AppTextStyles.regularStyle,),
              const SizedBox(height: 10),
              CustomTextInput(
                  controller: option3Controller, title: 'option 3'),
              const SizedBox(height: 15),
              Text("Option 4",style: AppTextStyles.regularStyle,),
              const SizedBox(height: 10),
              CustomTextInput(
                  controller: option4Controller, title: 'option 4'),
              const SizedBox(height: 15),
              PrimaryButton(
                title: "Upload",
                onPressed: (){

                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) {
                    return const BottomNavBar();
                  }), (route) => false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
