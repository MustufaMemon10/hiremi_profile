import 'package:flutter/material.dart';
import 'package:hiremi_profile/screens/Edit_Profile_Section/Education/AddEducation.dart';
import 'package:hiremi_profile/screens/Edit_Profile_Section/ProfileSummary/ProfileSummary.dart';

import '../../../core/common/widgets/appbar/AppBar.dart';
import '../../../core/utils/constants/AppSizes.dart';
import '../../../core/utils/constants/colors.dart';
import '../../Verified_Profile_Section/ProfileScreen.dart';
import '../../Verified_Profile_Section/widgets/ProfileSummary.dart';
import '../widgets/CustomTextField.dart';

class AddKeySkills extends StatelessWidget {
   AddKeySkills({super.key});

   final skillController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const SAppbar(
        title: 'Edit Profile',
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: Sizes.responsiveXl(context),
            right: Sizes.responsiveDefaultSpace(context),
            bottom: kToolbarHeight,
            left: Sizes.responsiveDefaultSpace(context)),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Key Skills',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              Row(
                children: [
                  const Text(
                    'Key Skills',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '*',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Sizes.responsiveSm(context),
              ),
              CustomTextField(
                controller: skillController,
                hintText: 'Eg: Flutter Developer',
                suffix: Icon(
                  Icons.open_with,
                  size: 15,
                  color: AppColors.secondaryText,
                ),
              ),
              SizedBox(
                height: Sizes.responsiveXs(context),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Word Limit is 100-250 words.',
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                    color: AppColors.secondaryText,
                  ),
                ),
              ),
              SizedBox(
                height: Sizes.responsiveMd(context),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(Sizes.radiusSm)),
                        padding: EdgeInsets.symmetric(
                            vertical: Sizes.responsiveHorizontalSpace(context),
                            horizontal: Sizes.responsiveMdSm(context)),
                      ),
                      onPressed: () {
                        if (skillController.text.isNotEmpty) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>  ProfileScreen()));
                        }
                      },
                      child: const Text(
                        'Save',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                        ),
                      )),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side:   BorderSide(color: AppColors.primary,width: 0.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(Sizes.radiusSm)),
                        padding: EdgeInsets.symmetric(
                            vertical: Sizes.responsiveSm(context),
                            horizontal: Sizes.responsiveMdSm(context)),
                      ),
                      onPressed: () {
                        if(skillController.text.isNotEmpty){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>   AddEducation()));
                        }
                      },
                      child:  Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Save & Next',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primary,
                            ),
                          ),
                          SizedBox(
                            width: Sizes.responsiveXs(context),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 11,
                            color: AppColors.primary,
                          )
                        ],
                      )),
                ],
              )

            ],
            ),
      ),
    );
  }
}