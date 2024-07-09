import 'package:flutter/material.dart';
import 'package:hiremi_profile/core/common/widgets/appbar/AppBar.dart';
import 'package:hiremi_profile/core/utils/constants/AppSizes.dart';


class ProfileSummary extends StatelessWidget {
  const ProfileSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppbar(
        title: 'Edit Profile',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Sizes.responsiveDefaultSpace(context)),
        child: Column(
          children: [
            const Text(
              'Profile Summary',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: Sizes.responsiveMd(context),
            ),
          ],
        ),
      ),
    );
  }
}
