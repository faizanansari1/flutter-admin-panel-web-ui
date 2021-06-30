import 'package:admin_panel_web_ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// https://www.youtube.com/watch?v=kFCuWVE6saY
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      home: HomePage(),
    );
  }
}
