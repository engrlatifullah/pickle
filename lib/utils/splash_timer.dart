import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pickle/utils/navigations.dart';

import '../screens/first_screen/first_screen.dart';

splashTimer(BuildContext context) {
  Timer(const Duration(seconds: 4), () {
    navigateWithPush(
      context: context,
      pageName: const FirstScreen(),
    );
  });
}
