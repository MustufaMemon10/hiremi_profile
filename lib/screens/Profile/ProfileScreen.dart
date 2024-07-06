import 'package:flutter/material.dart';
import 'package:hiremi_profile/core/common/widgets/CustomContainer/OutlinedButton.dart';
import 'package:hiremi_profile/core/common/widgets/RoundedContainer/roundedContainer.dart';
import 'package:hiremi_profile/core/common/widgets/appbar/AppBar.dart';
import 'package:hiremi_profile/core/utils/constants/AppSizes.dart';
import 'package:hiremi_profile/core/utils/constants/colors.dart';
import 'package:hiremi_profile/core/utils/widgets/ProfileStatusSection.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../core/utils/widgets/BasicDetails.dart';
import '../../core/utils/widgets/Education.dart';
import '../../core/utils/widgets/Experience.dart';
import '../../core/utils/widgets/KeySkills.dart';
import '../../core/utils/widgets/ProfileSummary.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: Sizes.defaultPadding,right: Sizes.defaultPadding,bottom: kToolbarHeight),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SAppbar(),
              const SizedBox(
                height: 40,
              ),
              const ProfileStatusSection(),
              const SizedBox(
                height: Sizes.md,
              ),
              Divider(
                height: 0.25,
                thickness: 0.25,
                color: AppColors.secondaryText,
              ),
              const SizedBox(
                height: Sizes.md,
              ),
              const BasicDetails(),
              const SizedBox(
                height: Sizes.md,
              ),
              const ProfileSummary(),
              const SizedBox(
                height: Sizes.md,
              ),
              const KeySkills(),
              const SizedBox(
                height: Sizes.md,
              ),
               const Education(),
              const SizedBox(
                height: Sizes.md,
              ),
              const Experience(),
              const SizedBox(
                height: Sizes.md,
              ),
              const Projects()
            ],
          ),
        ),
      ),
    );
  }
}

class Projects extends StatelessWidget {
  const Projects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const OutlinedContainer(title:'Projects',
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectsChild(
          title: 'Responsive Personal Portfolio Website',
          duration: 'Aug 2023 - Sept 2023',
          description: 'I’m a fresher and looking for internships, I\'ve a skillset including Web Development from frontend work to backend work, Development from frontend work to backend work.',
          link:'https://github.com/hyperdgx/Toggle-Dark-Light-Mode',
        ),
        SizedBox(height: Sizes.defaultPadding,),
        ProjectsChild(
          title: 'Animated Personal Portfolio Website',
          duration: 'Aug 2023 - Sept 2023',
          description: 'I’m a fresher and looking for internships, I\'ve a skillset including Web Development from frontend work to backend work, Development from frontend work to backend work.',
          link:'https://github.com/hyperdgx/Toggle-Dark-Light-Mode',
        ),
      ],
    ),
    );
  }
}

class ProjectsChild extends StatelessWidget {
  const ProjectsChild({
    super.key, required this.title, required this.duration, required this.description, required this.link,
  });

  final String title, duration, description,link;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
        style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: Sizes.xs,),
        Text(duration,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        const SizedBox(height: Sizes.sm,),
        Text(description,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: Sizes.sm,),
         RoundedContainer(
          color: Colors.blue[100],
          radius: 2, padding: const EdgeInsets.all(4),child:  Text(link,style: const TextStyle(
         decoration: TextDecoration.underline,
          fontWeight: FontWeight.w400,fontSize: 8,color: Colors.blue
        ),
        ), ),
        const SizedBox(height: Sizes.sm,),
        Divider(height: 0.25,thickness: 0.25,color: AppColors.secondaryText,),
      ],
    );
  }
}


