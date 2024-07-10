import 'package:flutter/material.dart';
import 'package:hiremi_profile/screens/Edit_Profile_Section/Key%20Skills/AddKeySkills.dart';

import '../../../core/common/widgets/CustomContainer/OutlinedButton.dart';
import '../../../core/common/widgets/RoundedContainer/roundedContainer.dart';
import '../../../core/utils/constants/AppSizes.dart';
import '../../../core/utils/constants/colors.dart';

class KeySkills extends StatelessWidget {
  const KeySkills({
    super.key,
    required this.skills,
  });

  final List<String> skills;

  bool isValid (){
    return skills.isNotEmpty;
  }
  @override
  Widget build(BuildContext context) {
    return OutlinedContainer(
      title: 'Key Skills',
      onTap: () =>
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>  AddKeySkills())),
      isTrue: isValid(),
      child: Wrap(
          runSpacing: 10,
          spacing: Sizes.responsiveSm(context),
          children: skills.map((skill) => RoundedContainer(
                radius: 16,
                padding: EdgeInsets.symmetric(
                  horizontal: Sizes.responsiveHorizontalSpace(context),
                  vertical: Sizes.responsiveVerticalSpace(context),
                ),
                border: Border.all(width: 0.5, color: AppColors.primary),
                child: Text(
                  skill,
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary,
                  ),
                ),
              )
          ).toList()
      ),
    );
  }
}
