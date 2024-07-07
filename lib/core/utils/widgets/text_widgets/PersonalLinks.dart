import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hiremi_profile/core/common/widgets/CustomContainer/OutlinedButton.dart';

import '../../../common/widgets/RoundedContainer/roundedContainer.dart';
import '../../constants/AppSizes.dart';
import '../../constants/colors.dart';


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
          SizedBox(
            height: Sizes.responsiveMd(context),
          ),
          const PersonalLinksChild(
            platform: 'Github',
            link: 'https://www.github.com/hyperdgx/',
          ),
          SizedBox(
            height: Sizes.responsiveMd(context),
          ),
          const PersonalLinksChild(
            platform: '',
            link: '',
          ),
          SizedBox(
            height: Sizes.responsiveMd(context),
          ),
          SizedBox(
            width: Sizes.responsiveXxl(context) * 1.8,
            height: Sizes.responsiveLg(context) * 1.06,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Sizes.xs),
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: Sizes.responsiveHorizontalSpace(context),
                        horizontal: Sizes.responsiveMdSm(context))),
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
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: Sizes.responsiveMdSm(context),
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
              padding: EdgeInsets.only(
                  left: Sizes.responsiveSm(context) * 1.15,
                  top: Sizes.responsiveSm(context) * 0.9,
                  bottom: Sizes.responsiveSm(context) * 0.9),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.add_link,
                      size: 9,
                      color: link.isNotEmpty
                          ? AppColors.white
                          : Colors.black.withOpacity(.75)),
                  const SizedBox(
                    width: Sizes.xs * 1.3,
                  ),
                  Padding(
                    padding:
                    EdgeInsets.only(right: Sizes.responsiveSm(context)),
                    child: Text(platform.isNotEmpty ? platform : 'Link Title',
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: link.isNotEmpty
                              ? AppColors.white
                              : Colors.black.withOpacity(0.25),
                        )),
                  ),
                ],
              )),
        ),
        SizedBox(
          width: Sizes.responsiveSm(context),
        ),
        Expanded(
          flex: 7,
          child: RoundedContainer(
              border: Border.all(
                  width: 0.5,
                  color: link.isNotEmpty
                      ? AppColors.green
                      : AppColors.secondaryText),
              radius: 2,
              padding: EdgeInsets.only(
                  left: Sizes.responsiveSm(context) * 1.15,
                  top: Sizes.responsiveSm(context) * 0.9,
                  bottom: Sizes.responsiveSm(context) * 0.9),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.rotate(
                      angle: pi * 1.5,
                      child: Icon(
                        Icons.add_link,
                        size: 9.5,
                        color: link.isNotEmpty
                            ? Colors.blue
                            : Colors.black.withOpacity(.75),
                        weight: 1.4,
                      )),
                  SizedBox(
                    width: Sizes.responsiveHorizontalSpace(context),
                  ),
                  Text(link.isNotEmpty ? link : 'Paste Link',
                      style: TextStyle(
                          fontSize: 8.0,
                          fontWeight: FontWeight.w500,
                          color: link.isNotEmpty
                              ? Colors.blue
                              : Colors.black.withOpacity(0.25))),
                ],
              )),
        )
      ],
    );
  }
}
