import 'package:flutter/material.dart';
import 'package:pickle/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:pickle/screens/bottom_nav_bar/home_screen/home_screen.dart';

import '../../models/intrest_model.dart';
import '../../themes/app_colors.dart';
import '../../utils/app_text_style.dart';
import '../../utils/globel.dart';
import '../../utils/navigations.dart';
import '../../widgets/buttons.dart';
import 'login_screen.dart';

class ChoiceOfInterest extends StatefulWidget {
  const ChoiceOfInterest({Key? key}) : super(key: key);

  @override
  State<ChoiceOfInterest> createState() => _ChoiceOfInterestState();
}

class _ChoiceOfInterestState extends State<ChoiceOfInterest> {
  List<InterestModel> selectedOption = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Choose your interest",
                  style: AppTextStyles.semiBoldStyle,
                ),
                const SizedBox(height: 10),
                GridView.builder(
                  itemCount: interestOption.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        if (selectedOption.contains(interestOption[index])) {
                          setState(() {
                            selectedOption.isNotEmpty
                                ? selectedOption.remove(interestOption[index])
                                : null;
                          });
                        } else {
                          setState(() {
                            selectedOption.add(interestOption[index]);
                          });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: selectedOption.contains(interestOption[index])
                              ? AppColors.primaryColor
                              : AppColors.primaryGrey.withOpacity(0.3),
                        ),
                        child: Column(
                          children: [
                            Expanded(child: SizedBox(
                              width: double.infinity,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(6),),
                                  child: Image.asset(interestOption[index].image,fit: BoxFit.cover,)),
                            )),
                            SizedBox(height: 5),
                            Center(
                              child: Text(
                                interestOption[index].title,
                                style: AppTextStyles.regularStyle.copyWith(
                                    fontSize: 16,
                                    color: selectedOption
                                            .contains(interestOption[index])
                                        ? AppColors.primaryWhite
                                        : AppColors.primaryBlack),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                Text(
                  "${selectedOption.length} / ${interestOption.length}",
                  style: AppTextStyles.mediumStyle,
                ),
                const SizedBox(height: 20),
                PrimaryButton(
                  title: "Sign Up",
                  onPressed: () {
                    if (selectedOption.length < 3) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            icon: const Icon(
                              Icons.warning,
                              color: AppColors.primaryRed,
                              size: 50,
                            ),
                            title: const Text(
                                "Choice of Interest must be greater than 3"),
                            actions: [
                              PrimaryButton(
                                title: "Ok",
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              )
                            ],
                          );
                        },
                      );
                    } else {
                      navigateWithPush(
                        context: context,
                        pageName: const BottomNavBar(),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
