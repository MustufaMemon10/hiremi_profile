import 'package:flutter/material.dart';

import '../../common/widgets/CustomContainer/OutlinedButton.dart';
import '../constants/AppSizes.dart';
import '../constants/colors.dart';


class Experience extends StatelessWidget {
  const Experience({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const OutlinedContainer(
      title: 'Experience',
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExperienceChild(
            title: 'Flutter UI Developer',
            company: 'CRTD Technologies',
            jobType: 'Remote',
            timing: 'Full time • Aug 2024 - Present',
          ),
          SizedBox(height: Sizes.md,),
          ExperienceChild(
            title: 'Backend Developer',
            company: 'CRTD Technologies',
            jobType: 'Bhopal, Madhya Pradesh, India',
            timing: 'Full time • Jul 2024 - Aug 2024',
          ),
        ],
      ),
    );
  }
}

class ExperienceChild extends StatelessWidget {
  const ExperienceChild({
    super.key, required this.title, required this.jobType, required this.company, required this.timing,
  });

  final String title,jobType,company,timing;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.apartment,size:25,color: AppColors.primary,),
        const SizedBox(width: 12,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: const TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.w500,
            ),),
            const SizedBox(height: Sizes.xs,),
            Text(jobType,style: const TextStyle(
              fontSize: 6,
              fontWeight: FontWeight.w400,
            ),),
            const SizedBox(height: Sizes.xxs,),
            Text(company,style: const TextStyle(
              fontSize: 6,
              fontWeight: FontWeight.w400,
            ),),
            const SizedBox(height: Sizes.xxs,),
            Text(timing,style: TextStyle(
              fontSize: 6,
              fontWeight: FontWeight.w500,
              color: AppColors.secondaryText,
            ),),
            Divider(height: 0.25,thickness: 0.25,color: AppColors.secondaryText,),
          ],
        )
      ],
    );
  }
}