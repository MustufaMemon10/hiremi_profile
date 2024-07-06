import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hiremi_profile/core/common/widgets/CustomContainer/OutlinedButton.dart';
import 'package:hiremi_profile/core/common/widgets/RoundedContainer/roundedContainer.dart';
import 'package:hiremi_profile/core/common/widgets/appbar/AppBar.dart';
import 'package:hiremi_profile/core/utils/constants/AppSizes.dart';
import 'package:hiremi_profile/core/utils/constants/colors.dart';
import 'package:hiremi_profile/core/utils/widgets/ProfileStatusSection.dart';
import 'package:hiremi_profile/core/utils/widgets/Projects.dart';

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
          padding: const EdgeInsets.only(
              left: Sizes.defaultPadding,
              right: Sizes.defaultPadding,
              bottom: kToolbarHeight),
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
              const Projects(),
              const SizedBox(
                height: Sizes.md,
              ),
              const PersonalInfo(),
              const SizedBox(
                height: Sizes.md,
              ),
              const PersonalLinks(),
              const SizedBox(
                height: Sizes.md,
              ),
              OutlinedContainer(
                showEdit: false,
                title: 'Languages',
                child: Wrap(
                  runSpacing: 10,
                  children: <Widget>[
                    RoundedContainer(
                      radius: Sizes.md,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 3),
                      border: Border.all(width: 0.5, color: AppColors.primary),
                      child:  Text('English',style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primary),),
                    ),
                    const SizedBox(
                      width: Sizes.sm,
                    ),
                    RoundedContainer(
                      radius: Sizes.md,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 3),
                      border: Border.all(width: 0.7, color: AppColors.primary),
                      child:  Text('Hindi',style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primary),),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PersonalLinks extends StatelessWidget {
  const PersonalLinks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedContainer(
      showEdit: false,
      title: 'Add Links',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PersonalLinksChild(
            platform: 'LinkedIn',
            link: 'https://www.linkedin.com/in/1harshpawar/',
          ),
          const SizedBox(
            height: Sizes.md,
          ),
          const PersonalLinksChild(
            platform: 'Github',
            link: 'https://www.github.com/hyperdgx/',
          ),
          const SizedBox(
            height: Sizes.md,
          ),
          const PersonalLinksChild(
            platform: '',
            link: '',
          ),
          const SizedBox(
            height: Sizes.md,
          ),
          SizedBox(
            width: 80,
            height: 25,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Sizes.xs),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 6, horizontal: 11)),
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Text(
                      'Add Links ',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .apply(color: AppColors.white),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 12,
                      color: AppColors.white,
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}

class PersonalLinksChild extends StatelessWidget {
  const PersonalLinksChild({
    super.key,
    required this.platform,
    required this.link,
  });

  final String platform, link;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: RoundedContainer(
              color: link.isNotEmpty ? AppColors.green : Colors.transparent,
              border: Border.all(width: 0.5, color: AppColors.secondaryText),
              radius: 2,
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 9),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_link,
                    size: 9,
                    color: link.isNotEmpty
                        ? AppColors.white
                        : Colors.black.withOpacity(0.25),
                  ),
                  const SizedBox(
                    width: Sizes.xs * 1.3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(platform.isNotEmpty ? platform : 'Link Title',
                        style: TextStyle(
                          fontSize: 8.0,
                          fontWeight: FontWeight.w500,
                          color: link.isNotEmpty
                              ? AppColors.white
                              : Colors.black.withOpacity(0.25),
                        )),
                  ),
                ],
              )),
        ),
        const SizedBox(
          width: Sizes.sm,
        ),
        Expanded(
          flex: 7,
          child: RoundedContainer(
              border: Border.all(width: 0.5, color: AppColors.green),
              radius: 2,
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 9),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.rotate(
                      angle: pi * 1.5,
                      child: Icon(
                        Icons.add_link,
                        size: 9,
                        color: link.isNotEmpty
                            ? Colors.blue
                            : Colors.black.withOpacity(0.25),
                        weight: 1.4,
                      )),
                  const SizedBox(
                    width: Sizes.xs * 1.3,
                  ),
                  if (link.isEmpty)
                    Text('Paste Link',
                        style: TextStyle(
                            fontSize: 8.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.25))),
                  if (link.isNotEmpty)
                    Text(link,
                        style: const TextStyle(
                            fontSize: 8.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue)),
                ],
              )),
        )
      ],
    );
  }
}

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const OutlinedContainer(
      title: 'Personal Details',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PersonalInfoChild(
            title: 'Gender',
            subtitle: 'Male',
          ),
          PersonalInfoChild(
            title: 'Marital Status',
            subtitle: 'Single / Unmarried',
          ),
          PersonalInfoChild(
            title: 'Date of Birth (DOB)',
            subtitle: '29-10-2002',
          ),
          PersonalInfoChild(
            title: 'Current Address',
            subtitle: 'Sheetal Mega City, Phase - 03, Mandideep, 462046',
          ),
          PersonalInfoChild(
            title: 'Permeant Address',
            subtitle: 'Sheetal Mega City, Phase - 03, Mandideep, 462046',
          ),
          PersonalInfoChild(
            title: 'Career Break',
            subtitle: 'No',
          ),
          PersonalInfoChild(
            title: 'Differently Abled',
            subtitle: 'No',
          ),
          PersonalInfoChild(
            title: 'Native Language',
            subtitle: 'Hindi',
          ),
        ],
      ),
    );
  }
}

class PersonalInfoChild extends StatelessWidget {
  const PersonalInfoChild({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(
          height: Sizes.xs,
        ),
        Text(subtitle,
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .apply(color: AppColors.secondaryText)),
        const SizedBox(
          height: Sizes.sm,
        ),
        Divider(
          height: 0.25,
          thickness: 0.25,
          color: AppColors.secondaryText,
        ),
        const SizedBox(
          height: Sizes.md,
        )
      ],
    );
  }
}
