import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:pickle/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:pickle/utils/app_text_style.dart';
import 'package:video_player/video_player.dart';

import '../../../../widgets/buttons.dart';

class UploadVideoScreen extends StatefulWidget {
  final String? video;

  const UploadVideoScreen({Key? key, this.video}) : super(key: key);

  @override
  State<UploadVideoScreen> createState() => _UploadVideoScreenState();
}

class _UploadVideoScreenState extends State<UploadVideoScreen> {
  ChewieController ?_chewieController;
  VideoPlayerController ?  _videoPlayerController;


  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.file(File(widget.video!));
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController!,
      autoPlay: false,
      looping: false,
    );
    super.initState();
  }

  void dispose() {
    _videoPlayerController!.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "https://gyanvaan.com/wp-content/uploads/2023/04/whatsapp-DP-images-for-girl-free-download-1.jpg"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Latif",
                    style: AppTextStyles.mediumStyle,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration:
                    InputDecoration(hintText: "Write something about Video"),
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Chewie(
                  controller: _chewieController!,
                ),
              ),
              const SizedBox(height: 20),
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
