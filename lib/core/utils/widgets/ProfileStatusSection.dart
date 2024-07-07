import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../constants/AppSizes.dart';
import '../constants/colors.dart';

class ProfileStatusSection extends StatelessWidget {
  const ProfileStatusSection({super.key});

  final percent = 0.25;
  final showPercent = .25 * 100;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CircularPercentIndicator(
            radius: 40,
            lineWidth: 6,
            percent: percent,
            center: Text('$showPercent%'),
            progressColor: AppColors.green,
            backgroundColor: Colors.transparent,
          ),
          SizedBox(
            height: Sizes.responsiveMd(context),
          ),
          Text('Harsh Pawar', style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(
            height: Sizes.responsiveSm(context),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: Sizes.responsiveVerticalSpace(context),
              horizontal: Sizes.responsiveHorizontalSpace(context),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  width: 0.7,
                  color: AppColors.primary,
                )),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/icons/verifiedIcon.png',
                  height: MediaQuery.of(context).size.width * 0.025,
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                 SizedBox(
                  width: Sizes.responsiveXs(context),
                ),
                Text(
                  'Not verified',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ),
           SizedBox(
            height: Sizes.responsiveSm(context),
          ),
          Text('Last updated today',
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w400,
                color: AppColors.secondaryText,
              )),
        ],
      ),
    );
  }
}
