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
            progressColor: AppColors.progressColor,
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(
            height: Sizes.md,
          ),
          Text('Harsh Pawar',
              style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(
            height: Sizes.sm,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                vertical: 3.0, horizontal: 6.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: const Color(0xFFC1272D),
                )),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/icons/verifiedIcon.png',
                  height: 10,
                  width: 10,
                ),
                const SizedBox(
                  width: Sizes.xs,
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
          const SizedBox(
            height: Sizes.sm,
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
