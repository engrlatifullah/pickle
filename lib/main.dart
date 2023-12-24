import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pickle/screens/splash/splash_screen.dart';
import 'package:pickle/themes/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primaryWhite,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppColors.primaryColor,
        ),
        primaryColor: AppColors.primaryColor,
      ),
      home: const SplashScreen(),
    );
  }
}
