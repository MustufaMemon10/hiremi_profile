import 'package:flutter/material.dart';

import '../../common/widgets/CustomContainer/OutlinedButton.dart';
import '../../common/widgets/RoundedContainer/roundedContainer.dart';
import '../constants/AppSizes.dart';
import '../constants/colors.dart';

class KeySkills extends StatelessWidget {
  const KeySkills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedContainer(
      title: 'Key Skills',
      child: Wrap(runSpacing: 10, children: [
        RoundedContainer(
            radius: 16,
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3.0),
            border: Border.all(width: 0.5, color: AppColors.primary),
            child: Text('UI/UX',
                style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary))),
        const SizedBox(
          width: Sizes.sm,
        ),
        RoundedContainer(
            radius: 16,
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3.0),
            border: Border.all(width: 0.5, color: AppColors.primary),
            child: Text('Frontend',
                style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary))),
        const SizedBox(
          width: Sizes.sm,
        ),
        RoundedContainer(
            radius: 16,
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3.0),
            border: Border.all(width: 0.5, color: AppColors.primary),
            child: Text('Backend',
                style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary))),
        const SizedBox(
          width: Sizes.sm,
        ),
        RoundedContainer(
            radius: 16,
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3.0),
            border: Border.all(width: 0.5, color: AppColors.primary),
            child: Text('Flutter',
                style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary))),
        const SizedBox(
          width: Sizes.sm,
        ),
        RoundedContainer(
            radius: 16,
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3.0),
            border: Border.all(width: 0.5, color: AppColors.primary),
            child: Text('Javascript',
                style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary))),
      ]),
    );
  }
}
