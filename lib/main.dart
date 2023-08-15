
import 'package:book_app/constant.dart';
import 'package:book_app/core/utilits/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(const BooklyApp());
}



class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
        brightness: Brightness.dark,
        textTheme: GoogleFonts.montserratAlternatesTextTheme(ThemeData.dark().textTheme),
      ),
      routerConfig: Approuter.router,
    );
  }
}