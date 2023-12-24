import 'package:flutter/material.dart';
import 'package:pickle/screens/bottom_nav_bar/home_screen/widget/poll_widget.dart';
import 'package:pickle/screens/bottom_nav_bar/home_screen/widget/social_icon.dart';
import 'package:pickle/themes/app_colors.dart';
import 'package:pickle/utils/app_text_style.dart';
import 'package:pickle/utils/globel.dart';

import '../../../widgets/custom_text_input.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: postData.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        final data = postData[index];
      return
        Stack(
          children: [
            //image
            index % 3 == 0 ?   const PollWidget()
                : Container(
              height: MediaQuery.sizeOf(context).height,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(data.post.toString()),
                ),
              ),
              child: Center(
                child: data.isVideo!
                    ? const Icon(
                  Icons.play_circle,
                  size: 70,
                  color: AppColors.primaryWhite,
                )
                    : null,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [

                        //profile
                        Container(
                          height: 60,
                          child: Stack(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: AppColors.primaryColor,width: 2),
                                ),
                                child: CircleAvatar(backgroundImage: NetworkImage(data.profileImage!),),
                              ),
                              const Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: AppColors.primaryRed,
                                      child: Icon(Icons.add,color: AppColors.primaryWhite,size: 20,))),

                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        //like
                        SocialIcon(
                          title: data.like.toString(),
                          icon: Icons.favorite,
                          color: Colors.red,
                          onTap: () {},
                        ),
                        const SizedBox(height: 10),
                        //comment
                        SocialIcon(
                          title: data.comment.toString(),
                          icon: Icons.comment,
                          onTap: () {},
                        ),
                        const SizedBox(height: 10),

                        //save
                        SocialIcon(
                          title: data.save.toString(),
                          icon: Icons.bookmark,
                          onTap: () {},
                        ),
                        const SizedBox(height: 10),
                        //share
                        SocialIcon(
                          title: data.share.toString(),
                          icon: Icons.send,
                          onTap: () {},
                        ),

                      ],
                    ),
                  ),

                  Text(
                    data.name!,
                    style: AppTextStyles.semiBoldStyle
                        .copyWith(color: AppColors.primaryWhite),
                  ),

                  Text(
                    data.description!,
                    style: AppTextStyles.mediumStyle
                        .copyWith(color: AppColors.primaryWhite),
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                ],
              ),
            ),
          ],
        );
    },);
  }
}

