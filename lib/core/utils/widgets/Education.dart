
import 'package:flutter/material.dart';

import '../../common/widgets/CustomContainer/OutlinedButton.dart';
import '../constants/AppSizes.dart';
import '../constants/colors.dart';

class Education extends StatelessWidget {
  const Education({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedContainer(title: 'Education',child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const EducationChild(
          course: 'B.Tech, CSE',
          place: 'Bhopal, Madhya Pradesh',
          duration: '2021-2025 | Percentage: 70.00%',
        ),
        const SizedBox(height: Sizes.sm,),
        Divider(height: 0.25,thickness: 0.25,color: AppColors.secondaryText,),
        const SizedBox(height: Sizes.md,),
        const EducationChild(
          course: '12th, Math’s Stream',
          place: 'Bhopal, Madhya Pradesh',
          duration: '2021-2020 | Percentage: 84.00%',
        ),
        const SizedBox(height: Sizes.sm,),
        Divider(height: 0.25,thickness: 0.25,color: AppColors.secondaryText,),
        const SizedBox(height: Sizes.md,),
        const EducationChild(
          course: '10th, All Subjects',
          place: 'Bhopal, Madhya Pradesh',
          duration: '2019-2018 | Percentage: 84.02%',
        ),
      ],
    ),);
  }
}

class EducationChild extends StatelessWidget {
  const EducationChild({
    super.key, required this.course, required this.place, required this.duration,

  });

  final String course,place,duration;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(course,style: const TextStyle(
          fontSize: 9,
          fontWeight: FontWeight.w500,
        ),),
        const SizedBox(height: Sizes.xs,),
         Text(place,style: const TextStyle(
          fontSize: 7,
          fontWeight: FontWeight.w400,
        ),),
        const SizedBox(height: Sizes.xxs,),
        Text(duration,style: TextStyle(
          fontSize: 7,
          fontWeight: FontWeight.w500,
          color: AppColors.secondaryText,
        ),),
      ],
    );
  }
}