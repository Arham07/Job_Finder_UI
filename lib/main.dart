import 'package:flutter/material.dart';
import 'main_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF43B1B7),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xFFFED408),
        ),
      ),
      home: MainScreen(),
    );
  }
}