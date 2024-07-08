import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiremi_profile/core/utils/theme/text_theme/text_theme.dart';
import 'package:hiremi_profile/screens/Job_Details_Section/Freshers_Jobs/Fresher_Jobs.dart';
import 'package:hiremi_profile/screens/Job_Details_Section/Internships/Internships_Details.dart';

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
      home: const FresherJobsScreen(),
    );
  }
}
