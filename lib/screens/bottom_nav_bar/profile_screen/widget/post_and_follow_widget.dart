import 'package:flutter/material.dart';
import 'package:pickle/themes/app_colors.dart';
import 'package:pickle/utils/app_text_style.dart';

class PostAndFollowWidget extends StatelessWidget {
  final String ? count;
  final String ? title;
  const PostAndFollowWidget({Key? key, this.count, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(count!,style: AppTextStyles.semiBoldStyle.copyWith(fontSize: 17),),
        Text(title!,style: AppTextStyles.regularStyle.copyWith(color: AppColors.primaryGrey),),
      ],
    );
  }
}
