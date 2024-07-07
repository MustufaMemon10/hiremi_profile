import 'package:flutter/material.dart';
import 'package:hiremi_profile/core/common/widgets/appbar/AppBar.dart';
import 'package:hiremi_profile/core/utils/constants/AppSizes.dart';
import 'package:hiremi_profile/core/utils/constants/colors.dart';
import 'package:hiremi_profile/core/utils/widgets/ProfileStatusSection.dart';
import 'package:hiremi_profile/core/utils/widgets/Projects.dart';
import '../../core/utils/widgets/BasicDetails.dart';
import '../../core/utils/widgets/Education.dart';
import '../../core/utils/widgets/Experience.dart';
import '../../core/utils/widgets/KeySkills.dart';
import '../../core/utils/widgets/ProfileSummary.dart';
import '../../core/utils/widgets/text_widgets/Languages.dart';
import '../../core/utils/widgets/text_widgets/PersonalInfo.dart';
import '../../core/utils/widgets/text_widgets/PersonalLinks.dart';

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
              const SAppbar(),
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


