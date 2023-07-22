import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medi/presentation/home/pages/home_screen.dart';

import 'core/config/app_color.dart';
import 'core/config/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    SystemUiOverlayStyle dark = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: AppColor.primaryColor,
      // systemNavigationBarIconBrightness: Brightness.light,
      // statusBarIconBrightness: Brightness.dark
    );
    SystemChrome.setSystemUIOverlayStyle(dark);

    return MaterialApp(
      title: 'Medi',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: const HomeScreen(),
    );
  }
}

