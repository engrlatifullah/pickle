import 'package:flutter/material.dart';

import '../../../../themes/app_colors.dart';
import '../../../../utils/app_text_style.dart';


class SocialIcon extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final Color  color;
  final VoidCallback? onTap;

  const SocialIcon({
    super.key,
    this.icon,
    this.title,
    this.onTap,  this.color = AppColors.primaryWhite,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Column(
        children: [
          Icon(
            icon!,
            size: 35,
            color: color,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title!,
            style: AppTextStyles.regularStyle
                .copyWith(color: AppColors.primaryWhite),
          ),
        ],
      ),
    );
  }
}