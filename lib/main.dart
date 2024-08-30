import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'features/bottom_nav_bar/presentation/screens/bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType){
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.green
          ),
          appBarTheme: AppBarTheme(
            color: Colors.green
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false,
        ),
          debugShowCheckedModeBanner: false,
        home:const BottomNav()


      );},
    );
  }
}

