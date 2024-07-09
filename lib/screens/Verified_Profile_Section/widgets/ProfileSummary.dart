import 'package:flutter/material.dart';

import '../../../core/common/widgets/CustomContainer/OutlinedButton.dart';
import '../../../core/utils/constants/colors.dart';


class ProfileSummary extends StatelessWidget {
  const ProfileSummary({
    super.key, required this.summary,
  });

  bool isValid (){
    return summary.isNotEmpty;
  }
  final String summary;
  @override
  Widget build(BuildContext context) {
    return  OutlinedContainer(
      onTap: (){},
      title: 'Profile Summary',
      isTrue: isValid(),
      child: Column(
        children: [
          Text(
              summary,
              style: const TextStyle(
                fontSize: 9.0,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              )),
        ],
      ),
    );
  }
}