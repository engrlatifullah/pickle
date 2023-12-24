import 'package:flutter/material.dart';
import 'package:pickle/utils/app_text_style.dart';

import '../../../../themes/app_colors.dart';

class ProfileButton extends StatelessWidget {
  final String ? title;
  final VoidCallback ? onTap;
  const ProfileButton({Key? key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? (){},
      child: Container(
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.primaryGrey.withOpacity(0.1),
        ),
        child: Text(title!,style: AppTextStyles.mediumStyle,),
      ),
    );
  }
}
