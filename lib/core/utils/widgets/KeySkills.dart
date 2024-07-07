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
        const SkillsChild(skill: 'UI/UX',),
         SizedBox(
          width: Sizes.responsiveSm(context),
        ),
        const SkillsChild(skill: 'Frontend',),
        SizedBox(
          width: Sizes.responsiveSm(context),
        ),
        const SkillsChild(skill: 'Backend',),
        SizedBox(
          width: Sizes.responsiveSm(context),
        ),
        const SkillsChild(skill: 'Flutter',),
        SizedBox(
          width: Sizes.responsiveSm(context),
        ),
        const SkillsChild(skill: 'Javascript',),
      ]),
    );
  }
}

class SkillsChild extends StatelessWidget {
  const SkillsChild({
    super.key, required this.skill,
  });

  final String skill;
  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
        radius: 16,
        padding:  EdgeInsets.symmetric(horizontal: Sizes.responsiveHorizontalSpace(context), vertical: Sizes.responsiveVerticalSpace(context)),
        border: Border.all(width: 0.5, color: AppColors.primary),
        child: Text(skill,
            style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w400,
                color: AppColors.primary)));
  }
}
