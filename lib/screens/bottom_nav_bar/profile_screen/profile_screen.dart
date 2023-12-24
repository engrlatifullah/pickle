import 'package:flutter/material.dart';
import 'package:pickle/screens/bottom_nav_bar/profile_screen/widget/post_and_follow_widget.dart';
import 'package:pickle/screens/bottom_nav_bar/profile_screen/widget/profile_button.dart';
import 'package:pickle/themes/app_colors.dart';
import 'package:pickle/utils/globel.dart';

import '../../../utils/app_text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Stack(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://gyanvaan.com/wp-content/uploads/2023/04/whatsapp-DP-images-for-girl-free-download-1.jpg"),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                            radius: 12,
                            backgroundColor: AppColors.primaryColor,
                            child: Icon(Icons.add,color: AppColors.primaryWhite,))),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  "Latif Ullah",
                  style: AppTextStyles.boldStyle,
                ),
                const SizedBox(height: 5),
                Text(
                  "Never Give Up Great Thing Take Time",
                  style: AppTextStyles.regularStyle,
                ),
                const SizedBox(height: 15),
                 const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PostAndFollowWidget(
                      title: "Following",
                      count: "13",
                    ),
                    PostAndFollowWidget(
                      title: "Followers",
                      count: "67",
                    ),
                    PostAndFollowWidget(
                      title: "Likes",
                      count: "11",
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: ProfileButton(
                          title: "Edit Profile",
                          onTap: () {},
                        ),
                      ),
                      const SizedBox(width: 30),
                      Expanded(
                        child: ProfileButton(
                          title: "Add Friends",
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
            child: GridView.builder(
          shrinkWrap: true,
          itemCount: postData.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              alignment: Alignment.topRight,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(postData[index].post.toString()))),
              child: postData[index].isVideo!
                  ? const Icon(
                      Icons.video_collection,
                      color: AppColors.primaryWhite,
                    )
                  : null,
            );
          },
        ))
      ],
    );
  }
}
