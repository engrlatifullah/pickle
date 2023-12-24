import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class AppTextStyles {
  static TextStyle boldStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryBlack
  );
  static TextStyle semiBoldStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryBlack
  );
  static TextStyle regularStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryBlack
  );
  static TextStyle mediumStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryBlack
  );
}