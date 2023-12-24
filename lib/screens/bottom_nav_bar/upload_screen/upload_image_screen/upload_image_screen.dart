import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pickle/utils/app_text_style.dart';
import 'package:video_player/video_player.dart';

import '../../../../widgets/buttons.dart';
import '../../bottom_nav_bar.dart';

class UploadImageScreen extends StatelessWidget {
  final String ? image;
  const UploadImageScreen({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "https://gyanvaan.com/wp-content/uploads/2023/04/whatsapp-DP-images-for-girl-free-download-1.jpg"),
                  ),
                  const SizedBox(width: 10,),
                  Text("Latif",style: AppTextStyles.mediumStyle,),
                ],
              ),
              const SizedBox(height: 10),
              const TextField(decoration: InputDecoration(
                  hintText: "Write something about photo"
              ),),

              SizedBox(height: 20,),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.file(File(image!),fit: BoxFit.cover,),
              ),
              SizedBox(height: 20),
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


