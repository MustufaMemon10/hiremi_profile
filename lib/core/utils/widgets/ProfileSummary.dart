import 'package:flutter/material.dart';

import '../../common/widgets/CustomContainer/OutlinedButton.dart';
import '../constants/colors.dart';


class ProfileSummary extends StatelessWidget {
  const ProfileSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const OutlinedContainer(
      title: 'Profile Summary',
      child: Column(
        children: [
          Text(
              'I’m a fresher and looking for internships, I\'ve a skillset including Web Development from frontend work to backend work, Development from frontend work to backend work.',
              style: TextStyle(
                fontSize: 9.0,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              )),
        ],
      ),
    );
  }
}