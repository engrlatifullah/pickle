import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pickle/screens/bottom_nav_bar/home_screen/widget/round_button.dart';
import 'package:pickle/themes/app_colors.dart';
import 'package:pickle/utils/app_text_style.dart';

import 'bar.dart';

class PollWidget extends StatefulWidget {
  const PollWidget({Key? key}) : super(key: key);

  @override
  State<PollWidget> createState() => _PollWidgetState();
}

class _PollWidgetState extends State<PollWidget> {
  double bar1Value = 0.9;
  double bar2Value = 0.7;
  double bar3Value = 0.6;
  double bar4Value = 0.4;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.2),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.primaryColor, width: 2),
                ),
                child: Center(
                  child: Text("How to call my son?",style: AppTextStyles.boldStyle.copyWith(color: AppColors.primaryColor),),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(child: Bar(height:bar1Value,isAnimation: bar1Value > bar2Value && bar1Value > bar3Value && bar1Value > bar4Value ? true : false, color: Colors.indigoAccent.shade100,)),
                  Expanded(child: Bar(height:bar2Value,isAnimation: bar2Value > bar1Value && bar3Value > bar3Value && bar2Value > bar4Value ? true : false, color: Colors.pinkAccent.shade100)),
                  Expanded(child: Bar(height:bar3Value,isAnimation: bar3Value > bar2Value && bar3Value > bar1Value && bar3Value > bar4Value ? true : false, color: Colors.brown.shade100)),
                  Expanded(child: Bar(height:bar4Value,isAnimation: bar4Value > bar1Value && bar4Value > bar2Value && bar4Value > bar3Value ? true : false, color: Colors.lightBlueAccent)),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(child: RoundButton(title: 'Guy',)),
                  SizedBox(width: 20),
                  Expanded(child: RoundButton(title: 'Ben',)),
                  SizedBox(width: 20),
                  Expanded(child: RoundButton(title: 'Den',)),
                  SizedBox(width: 20),
                  Expanded(child: RoundButton(title: 'Tom',)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}




