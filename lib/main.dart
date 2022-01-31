import 'package:flirt_with_flutter/home_page.dart';
import 'package:flirt_with_style/flirt_with_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return MaterialApp(
      title: 'Flirt with Flutter',
      theme: ThemeData(
        fontFamily: GoogleFonts.ubuntu().fontFamily,
        scaffoldBackgroundColor: Color(0xfff2f2f2),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colors.transparent,
          titleTextStyle: Theme.of(context).textTheme.headline6,
        ),
      ),
      home: ScrollConfiguration(
        behavior: FSBouncingScrollBehavior(),
        child: HomePage(),
      ),
    );
  }
}
