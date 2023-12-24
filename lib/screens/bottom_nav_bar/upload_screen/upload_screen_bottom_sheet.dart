import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pickle/utils/navigations.dart';
import 'package:pickle/widgets/buttons.dart';

import '../../../themes/app_colors.dart';
import '../../../utils/app_text_style.dart';
import '../../../utils/globel.dart';
import 'create_poll/create_poll.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({
    super.key,
  });

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Upload",
                style: AppTextStyles.mediumStyle,
              ),
              const SizedBox(height: 10),
              ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        backgroundColor: AppColors.primaryWhite,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Icon(
                                      Icons.close,
                                    )),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Are You want to continue with ",
                                style: AppTextStyles.regularStyle,
                              ),
                              const SizedBox(height: 20),
                               Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: PrimaryButton(
                                        title: "Gallery",
                                        onPressed: () async {
                                          await pickVideo(context);
                                        },
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: SizedBox(
                                      height: 40,
                                      child: PrimaryButton(
                                        title: "Live",
                                        onPressed: (){},
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                contentPadding: EdgeInsets.zero,
                horizontalTitleGap: 0,
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                leading: const Icon(
                  Icons.video_collection,
                  color: AppColors.primaryColor,
                ),
                title: Text(
                  "Video",
                  style: AppTextStyles.mediumStyle,
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                onTap: ()async{
                  await pickImage(context);
                },
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                horizontalTitleGap: 0,
                contentPadding: EdgeInsets.zero,
                leading: const Icon(
                  Icons.photo_camera_back,
                  color: AppColors.primaryColor,
                ),
                title: Text(
                  "Photos",
                  style: AppTextStyles.mediumStyle,
                ),
              ),
              ListTile(
                onTap: (){
                  navigateWithPush(context: context,pageName: const CreatePoll());
                },
                visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
                horizontalTitleGap: 0,
                contentPadding: EdgeInsets.zero,
                leading: const Icon(
                  Icons.poll_rounded,
                  color: AppColors.primaryColor,
                ),
                title: Text(
                  "Polls",
                  style: AppTextStyles.mediumStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
