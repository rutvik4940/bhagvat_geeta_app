import 'package:bhagvat_geeta_app/screen/splash/viwe/splash_screen.dart';
import 'package:bhagvat_geeta_app/screen/verse/view/verse_screen.dart';
import 'package:flutter/material.dart';

import '../screen/home/view/home_screen.dart';

Map<String,WidgetBuilder>app_routs= {
  "/": (context) => SplashScreen(),
  "home":(context) => HomeScreen(),
  "verse": (context) => VerseScreen(),

};