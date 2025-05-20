import 'package:flutter/material.dart';
import 'package:mech/common/color_extension.dart';
import 'package:mech/common/globs.dart';
import 'package:mech/screen/login/splash_screen.dart';

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
        fontFamilyFallback: ["Noto"],
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

