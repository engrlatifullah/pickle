import 'package:flutter/material.dart';
import 'package:pickle/screens/bottom_nav_bar/upload_screen/upload_screen_bottom_sheet.dart';
import 'package:pickle/themes/app_colors.dart';
import 'package:pickle/utils/navigations.dart';

import '../../utils/globel.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {
          navigateWithPush(context: context,pageName:  UploadScreen());

        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.none,
        height: 60,
        color: AppColors.primaryWhite,
        shadowColor: AppColors.primaryGrey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                splashColor: AppColors.primaryTransparent,
                highlightColor: AppColors.primaryTransparent,
                onTap: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      color: currentIndex == 0
                          ? AppColors.primaryColor
                          : AppColors.primaryGrey,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: currentIndex == 0
                            ? AppColors.primaryColor
                            : AppColors.primaryGrey,
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                splashColor: AppColors.primaryTransparent,
                highlightColor: AppColors.primaryTransparent,
                onTap: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.search,
                      color: currentIndex == 1
                          ? AppColors.primaryColor
                          : AppColors.primaryGrey,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(
                        color: currentIndex == 1
                            ? AppColors.primaryColor
                            : AppColors.primaryGrey,
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                splashColor: AppColors.primaryTransparent,
                highlightColor: AppColors.primaryTransparent,
                onTap: () {
                  setState(() {
                    currentIndex = 2;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: currentIndex == 2
                          ? AppColors.primaryColor
                          : AppColors.primaryGrey,
                    ),
                    Text(
                      "Wishlist",
                      style: TextStyle(
                        color: currentIndex == 2
                            ? AppColors.primaryColor
                            : AppColors.primaryGrey,
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                splashColor: AppColors.primaryTransparent,
                highlightColor: AppColors.primaryTransparent,
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.person,
                      color: currentIndex == 3
                          ? AppColors.primaryColor
                          : AppColors.primaryGrey,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                        color: currentIndex == 3
                            ? AppColors.primaryColor
                            : AppColors.primaryGrey,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
