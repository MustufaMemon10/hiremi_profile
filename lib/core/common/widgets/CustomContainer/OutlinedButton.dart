
import 'package:flutter/cupertino.dart';

import '../../../utils/constants/AppSizes.dart';
import '../../../utils/constants/colors.dart';

class OutlinedContainer extends StatelessWidget {
  const OutlinedContainer({
    super.key, required this.child, required this.title,
  });

  final Widget child;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.defaultPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.sm),
          border: Border.all(width: 0.5,color: AppColors.secondaryText)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(title,style:const TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500,color: AppColors.black,)),
              Image.asset('assets/icons/img_3.png',height: 16,width: 16,),
            ],
          ),
          const SizedBox(height: Sizes.md,),
          child
        ],
      )
    );
  }
}