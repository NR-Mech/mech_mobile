import 'package:flutter/material.dart';
import 'package:medical_app/common/color_extension.dart';
import 'package:medical_app/common/globs.dart';
import 'package:medical_app/screen/login/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Globs.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: TColor.bg,
        appBarTheme:  AppBarTheme(
          elevation: 0,
          backgroundColor: TColor.primary
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
        useMaterial3: false,
      ),
      home: const SplashScreen(),
    );
  }
}

