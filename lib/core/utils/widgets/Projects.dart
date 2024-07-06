
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
          radius: 2, padding: const EdgeInsets.all(4),child:  Row(
            children: [
              const Icon(Icons.attach_file,color: Colors.blue,),
              const SizedBox(width: 2.0,),
              Text(link,style: const TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue,
                fontWeight: FontWeight.w400,fontSize: 8,color: Colors.blue
                      ),
                      ),
            ],
          ), ),
        const SizedBox(height: Sizes.sm,),
        Divider(height: 0.25,thickness: 0.25,color: AppColors.secondaryText,),
      ],
    );
  }
}