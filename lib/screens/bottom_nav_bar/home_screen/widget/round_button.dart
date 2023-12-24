import 'package:flutter/material.dart';

import '../../../../themes/app_colors.dart';
import '../../../../utils/app_text_style.dart';

class RoundButton extends StatelessWidget {
  final String  title;
  final VoidCallback ? onTap;
  const RoundButton({
    super.key, required this.title, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? (){},
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(title!,style: AppTextStyles.mediumStyle.copyWith(color: AppColors.primaryWhite),),
        ),
      ),
    );
  }
}