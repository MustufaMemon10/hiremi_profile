import 'package:flutter/material.dart';
import 'package:hiremi_profile/core/utils/constants/AppSizes.dart';

import '../../../utils/constants/colors.dart';

class SAppbar extends StatelessWidget implements PreferredSizeWidget {
  const SAppbar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed});

  final String? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: EdgeInsets.only(left: Sizes.responsiveDefaultSpace(context),top: Sizes.responsiveSm(context),bottom: Sizes.responsiveSm(context)),
        child: Container(
            padding: EdgeInsets.all(Sizes.responsiveSm(context)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: AppColors.bgBlue,
            ),
            child: const Icon(
              Icons.menu,
              size: 22,
            )),
      ),
      title: Text(
        title!,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: Sizes.responsiveDefaultSpace(context)),
          child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.bgBlue,
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_outlined),
                ),
              )),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
