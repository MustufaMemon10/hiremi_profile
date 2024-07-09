import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiremi_profile/Navigation.dart';
import 'package:hiremi_profile/core/utils/theme/text_theme/text_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hiremi Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: STextTheme.textTheme,
        fontFamily: GoogleFonts.poppins().fontFamily,
        useMaterial3: true,
      ),
      home:  const NewNavbar(isV: true,),
    );
  }
}
