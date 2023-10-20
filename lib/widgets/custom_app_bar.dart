import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Evertech Movie App',
        style: AppStyles.heading1,
      ),
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Container(
            width: size.width(context, .1),
            height: size.width(context, .1),
            margin: size.right(context, .01),
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: size.borderRadius(context, .02),
            ),
            alignment: Alignment.center,
            child: Icon(
              PhosphorIcons.regular.magnifyingGlass,
              color: AppColors.tertiary,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
