import 'package:flutter/material.dart';
import 'package:hiremi_profile/screens/Edit_Profile_Section/BasicDetails/AddBasicDetails.dart';
import 'package:hiremi_profile/screens/Verified_Profile_Section/widgets/Languages.dart';

import '../../../core/common/widgets/CustomContainer/OutlinedButton.dart';
import '../../../core/utils/constants/AppSizes.dart';
import '../../../core/utils/constants/colors.dart';

class BasicDetails extends StatelessWidget {
  const BasicDetails({
    super.key,
    required this.lookingFor,
    required this.location,
    required this.email,
    required this.phoneNumber,
    required this.messageNumber,
  });

  bool isAllFieldValid() {
    return lookingFor.isNotEmpty &&
        location.isNotEmpty &&
        email.isNotEmpty &&
        phoneNumber.isNotEmpty &&
        messageNumber.isNotEmpty;
  }

  final String lookingFor, location, email, phoneNumber, messageNumber;

  @override
  Widget build(BuildContext context) {
    return OutlinedContainer(
      onTap: () =>
          Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) => const AddBasicDetails())),
      title: 'Basic Details',
      isTrue: isAllFieldValid(),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        if (isAllFieldValid())
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  Text(lookingFor,
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
              BasicDetailsChild(
                icon: Icons.add_location_alt,
                title: location,
              ),
              SizedBox(
                height: Sizes.responsiveSm(context),
              ),
              BasicDetailsChild(icon: Icons.mail_outline, title: email),
              SizedBox(
                height: Sizes.responsiveSm(context),
              ),
              BasicDetailsChild(icon: Icons.call_outlined, title: phoneNumber),
              SizedBox(
                height: Sizes.responsiveSm(context),
              ),
              BasicDetailsChild(
                  icon: Icons.message_outlined, title: messageNumber),
            ],
          )
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
