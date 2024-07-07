import 'package:flutter/material.dart';

import '../../common/widgets/CustomContainer/OutlinedButton.dart';
import '../../common/widgets/RoundedContainer/roundedContainer.dart';
import '../constants/AppSizes.dart';
import '../constants/colors.dart';

class Projects extends StatelessWidget {
  const Projects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedContainer(
      title: 'Projects',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProjectsChild(
            title: 'Responsive Personal Portfolio Website',
            duration: 'Aug 2023 - Sept 2023',
            description:
                'I’m a fresher and looking for internships, I\'ve a skillset including Web Development from frontend work to backend work, Development from frontend work to backend work.',
            link: 'https://github.com/hyperdgx/Toggle-Dark-Light-Mode',
          ),
          SizedBox(
            height: Sizes.responsiveDefaultSpace(context),
          ),
          const ProjectsChild(
            title: 'Animated Personal Portfolio Website',
            duration: 'Aug 2023 - Sept 2023',
            description:
                'I’m a fresher and looking for internships, I\'ve a skillset including Web Development from frontend work to backend work, Development from frontend work to backend work.',
            link: 'https://github.com/hyperdgx/Toggle-Dark-Light-Mode',
          ),
        ],
      ),
    );
  }
}

class ProjectsChild extends StatelessWidget {
  const ProjectsChild({
    super.key,
    required this.title,
    required this.duration,
    required this.description,
    required this.link,
  });

  final String title, duration, description, link;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        SizedBox(
          height: Sizes.responsiveXs(context),
        ),
        Text(
          duration,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        SizedBox(
          height: Sizes.responsiveSm(context),
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.labelLarge,
        ),
         SizedBox(
          height: Sizes.responsiveSm(context),
        ),
        RoundedContainer(
          color: Colors.blue[100],
          radius: 2,
          padding: EdgeInsets.all(Sizes.responsiveXs(context)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.attach_file,
                color: Colors.blue,
                size: 8,
              ),
               SizedBox(
                width: Sizes.responsiveXxs(context),
              ),
              Text(
                link,
                style: const TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue,
                    fontWeight: FontWeight.w400,
                    fontSize: 8,
                    color: Colors.blue),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Sizes.responsiveSm(context),
        ),
        Divider(
          height: 0.25,
          thickness: 0.25,
          color: AppColors.secondaryText,
        ),
      ],
    );
  }
}
