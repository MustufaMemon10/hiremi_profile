import 'package:flutter/material.dart';

import '../../../core/common/widgets/CustomContainer/OutlinedButton.dart';
import '../../../core/utils/constants/AppSizes.dart';
import '../../../core/utils/constants/colors.dart';

class BasicDetails extends StatelessWidget {
  const BasicDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedContainer(
      title: 'Basic Details',
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: Sizes.responsiveMd(context),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.business_center_outlined,
              size: 10,
              color: AppColors.secondaryText,
            ),
            SizedBox(
              width: Sizes.responsiveXxs(context),
            ),
            const Text('Looking for ',
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                )),
            Text('Internships',
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                )),
          ],
        ),
        SizedBox(
          height: Sizes.responsiveSm(context),
        ),
        const BasicDetailsChild(
          icon: Icons.add_location_alt,
          title: 'Bhopal, Madhya Pradesh, India',
        ),
        SizedBox(
          height: Sizes.responsiveSm(context),
        ),
        const BasicDetailsChild(
            icon: Icons.mail_outline, title: 'admin@gmail.com'),
        SizedBox(
          height: Sizes.responsiveSm(context),
        ),
        const BasicDetailsChild(
            icon: Icons.call_outlined, title: '+9988774562'),
        SizedBox(
          height: Sizes.responsiveSm(context),
        ),
        const BasicDetailsChild(
            icon: Icons.message_outlined, title: '+9988774562'),
      ]),
    );
  }
}

class BasicDetailsChild extends StatelessWidget {
  const BasicDetailsChild({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 10,
          color: AppColors.secondaryText,
        ),
        SizedBox(width: Sizes.responsiveXxs(context)),
        Text(title,
            style: const TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
            )),
      ],
    );
  }
}
