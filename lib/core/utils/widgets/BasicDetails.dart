
import 'package:flutter/material.dart';

import '../../common/widgets/CustomContainer/OutlinedButton.dart';
import '../constants/AppSizes.dart';
import '../constants/colors.dart';

class BasicDetails extends StatelessWidget {
  const BasicDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedContainer(
      title: 'Basic Details',
      child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const SizedBox(height: Sizes.md,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.business_center_outlined,size: 10,color: AppColors.secondaryText,
                  ),
                  const SizedBox(width: 2,),
                  const Text('Looking for ',style:TextStyle(fontSize: 10.0,fontWeight: FontWeight.w400,color: AppColors.black,)),
                  Text('Internships',style:TextStyle(fontSize: 10.0,fontWeight: FontWeight.w600,color: AppColors.primary,)),
                ],
              ),
          const SizedBox(height: Sizes.sm,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.add_location_alt,size: 10,color: AppColors.secondaryText,
              ),
              const SizedBox(width: 2,),
              const Text('Bhopal, Madhya Pradesh, India',style:TextStyle(fontSize: 10.0,fontWeight: FontWeight.w400,color: AppColors.black,)),
            ],
          ),
          const SizedBox(height: Sizes.sm,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.mail_outline,size: 10,color: AppColors.secondaryText,
              ),
              const SizedBox(width: 2,),
              const Text('admin@gmail.com',style:TextStyle(fontSize: 10.0,fontWeight: FontWeight.w400,color: AppColors.black,)),
            ],
          ),
          const SizedBox(height: Sizes.sm,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.call_outlined,size: 10,color: AppColors.secondaryText,
              ),
              const SizedBox(width: 2,),
              const Text('+9988774562',style:TextStyle(fontSize: 10.0,fontWeight: FontWeight.w400,color: AppColors.black,)),
            ],
          ),
          const SizedBox(height: Sizes.sm,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.message_outlined,size: 10,color: AppColors.secondaryText,
              ),
              const SizedBox(width: 2,),
              const Text('+9988774562',style:TextStyle(fontSize: 10.0,fontWeight: FontWeight.w400,color: AppColors.black,)),
            ],
          ),
      ]
      ),
    );
  }
}
