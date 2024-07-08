import 'package:flutter/material.dart';
import 'package:hiremi_profile/core/common/widgets/appbar/AppBar.dart';
import 'package:hiremi_profile/core/utils/constants/AppSizes.dart';
import 'package:hiremi_profile/core/utils/constants/colors.dart';
import 'package:hiremi_profile/screens/Job_Details_Section/Internships/widgets/Eligibility_Criteria_About_Company.dart';
import 'package:hiremi_profile/screens/Job_Details_Section/Internships/widgets/HeaderSection.dart';
import 'package:hiremi_profile/screens/Job_Details_Section/Internships/widgets/Role_Details.dart';
import 'package:hiremi_profile/screens/Job_Details_Section/Internships/widgets/Skill_Required.dart';

class InternshipsDetailsScreen extends StatelessWidget {
  const InternshipsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const SAppbar(
        title: 'Internships',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: Sizes.responsiveXl(context),
              right: Sizes.responsiveDefaultSpace(context),
              bottom: kToolbarHeight * 1.5,
              left: Sizes.responsiveDefaultSpace(context)),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

            /// Header Sections
            const HeaderSection(),

            SizedBox(height: Sizes.responsiveXl(context)),

            /// Role Details
            const RoleDetails(),
            SizedBox(
              height: Sizes.responsiveLg(context),
            ),
            /// Skill Required
            const SkillRequired(),
            SizedBox(
              height: Sizes.responsiveLg(context),
            ),

            /// Eligibility Criteria
            const EligibilityCriteriaAboutCompany()
          ]),
        ),
      ),
    );
  }
}

