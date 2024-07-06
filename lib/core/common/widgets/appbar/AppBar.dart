
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class SAppbar extends StatelessWidget implements PreferredSizeWidget {
  const SAppbar(
      {super.key,
        this.title,
        this.showBackArrow = false,
        this.leadingIcon,
        this.actions,
        this.leadingOnPressed});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      leading:
      Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: AppColors.bgBlue,
          ),
          child: const Icon(Icons.menu)),
      title: Text('Profile',style: Theme.of(context).textTheme.headlineSmall,),
      centerTitle: true,
      actions: [Container(
        decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.bgBlue,
        ),
        child: Center(child:IconButton(onPressed: (){},icon: const Icon(Icons.notifications_outlined),),)),],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
