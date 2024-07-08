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

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: Sizes.responsiveDefaultSpace(context),
              right: Sizes.responsiveDefaultSpace(context),
              bottom: kToolbarHeight),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SAppbar(title: 'Profile',),
              SizedBox(
                height: Sizes.responsiveXxl(context),
              ),
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
              const BasicDetails(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const ProfileSummary(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const KeySkills(),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              const Education(),
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


