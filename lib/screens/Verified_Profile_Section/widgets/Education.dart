import 'package:flutter/material.dart';
import 'package:hiremi_profile/screens/Edit_Profile_Section/Education/AddEducation.dart';

import '../../../core/common/widgets/CustomContainer/OutlinedButton.dart';
import '../../../core/utils/constants/AppSizes.dart';
import '../../../core/utils/constants/colors.dart';

class Education extends StatelessWidget {
  const Education({
    super.key,
    required this.education,
  });

  bool isValid() {
    return education.isNotEmpty;
  }

  final List<Map<String, String>> education;

  @override
  Widget build(BuildContext context) {
    return OutlinedContainer(
      onTap: () =>
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>   AddEducation())),
      title: 'Education',
      isTrue: isValid(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: education
            .map((edu) => EducationChild(
                course: edu['course']!,
                place: edu['place']!,
                duration: edu['duration']!))
            .toList(),
      ),
    );
  }
}

class EducationChild extends StatelessWidget {
  const EducationChild({
    super.key,
    required this.course,
    required this.place,
    required this.duration,
  });

  final String course, place, duration;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          course,
          style: const TextStyle(
            fontSize: 9.5,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: Sizes.responsiveXs(context),
        ),
        Text(
          place,
          style: const TextStyle(
            fontSize: 7.5,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: Sizes.responsiveXxs(context),
        ),
        Text(
          duration,
          style: TextStyle(
            fontSize: 7.5,
            fontWeight: FontWeight.w500,
            color: AppColors.secondaryText,
          ),
        ),
        SizedBox(height: Sizes.responsiveSm(context)),
        Divider(
          height: 0.25,
          thickness: 0.25,
          color: AppColors.secondaryText,
        ),
        SizedBox(height: Sizes.responsiveMd(context)),
      ],
    );
  }
}
