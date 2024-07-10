import 'package:flutter/material.dart';
import 'package:hiremi_profile/core/common/widgets/appbar/AppBar.dart';
import 'package:hiremi_profile/core/utils/constants/AppSizes.dart';
import 'package:hiremi_profile/core/utils/constants/colors.dart';
import 'package:hiremi_profile/screens/Verified_Profile_Section/widgets/BasicDetails.dart';
import 'package:hiremi_profile/screens/Verified_Profile_Section/widgets/Education.dart';
import 'package:hiremi_profile/screens/Verified_Profile_Section/widgets/Experience.dart';
import 'package:hiremi_profile/screens/Verified_Profile_Section/widgets/KeySkills.dart';
import 'package:hiremi_profile/screens/Verified_Profile_Section/widgets/Languages.dart';
import 'package:hiremi_profile/screens/Verified_Profile_Section/widgets/PersonalInfo.dart';
import 'package:hiremi_profile/screens/Verified_Profile_Section/widgets/PersonalLinks.dart';
import 'package:hiremi_profile/screens/Verified_Profile_Section/widgets/ProfileStatusSection.dart';
import 'package:hiremi_profile/screens/Verified_Profile_Section/widgets/ProfileSummary.dart';
import 'package:hiremi_profile/screens/Verified_Profile_Section/widgets/Projects.dart';
import 'package:hiremi_profile/screens/Verified_Profile_Section/widgets/ResumeSection.dart';


class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});

  final List<String> skills = ['UI/UX', 'Frontend', 'Backend', 'Flutter', 'Javascript'];
   final List<Map<String, String>> educationDetails = [
     {
       'course': 'B.Tech, CSE',
       'place': 'Bhopal, Madhya Pradesh',
       'duration': '2021-2025 | Percentage: 70.00%',
     },
     {
       'course': '12th, Math’s Stream',
       'place': 'Bhopal, Madhya Pradesh',
       'duration': '2021-2020 | Percentage: 84.00%',
     },
     {
       'course': '10th, All Subjects',
       'place': 'Bhopal, Madhya Pradesh',
       'duration': '2019-2018 | Percentage: 84.02%',
     },
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const SAppbar(
        title: 'Profile',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: Sizes.responsiveDefaultSpace(context),
              right: Sizes.responsiveDefaultSpace(context),
              top: Sizes.responsiveDefaultSpace(context),
              bottom: Sizes.responsiveXxl(context)* 2.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileStatusSection(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              Divider(
                height: 0.25,
                thickness: 0.5,
                color: AppColors.secondaryText,
              ),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
               ResumeSection(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const BasicDetails(
                lookingFor: 'Internships',
                location: 'Bhopal, Madhya Pradesh, India',
                email: 'admin@gmail.com',
                phoneNumber: '+9988774562',
                messageNumber: '+9988774562'
              ),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const ProfileSummary(
                summary: 'I’m a fresher and looking for internships, I\'ve a skillset including Web Development from frontend work to backend work, Development from frontend work to backend work.',
              ),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
               KeySkills(
                 skills: skills,
               ),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
               Education(education: educationDetails,),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const Experience(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const Projects(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const PersonalInfo(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const PersonalLinks(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const Languages()
            ],
          ),
        ),
      ),
    );
  }
}

