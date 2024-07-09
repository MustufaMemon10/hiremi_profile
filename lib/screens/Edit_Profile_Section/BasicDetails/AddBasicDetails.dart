import 'package:flutter/material.dart';
import 'package:hiremi_profile/core/common/widgets/appbar/AppBar.dart';

import '../../../core/utils/constants/AppSizes.dart';

class AddBasicDetails extends StatelessWidget {
  const AddBasicDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const SAppbar(
        title: 'Edit Profile',
      ),
      body: Padding(
          padding: EdgeInsets.only(
              top: Sizes.responsiveXl(context),
              right: Sizes.responsiveDefaultSpace(context),
              bottom: kToolbarHeight,
              left: Sizes.responsiveDefaultSpace(context)),
          child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Basic Details',

                )
          ])),
    );
  }
}
