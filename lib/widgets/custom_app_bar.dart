import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/routes/router.dart';
import 'package:movie_app/core/utils/utils.dart';
import 'package:movie_app/gen/l10n.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CustomAppBar extends ConsumerWidget {
  const CustomAppBar({
    super.key,
    required this.isHome,
  });

  final bool isHome;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return Container(
      height: size.height(context, .15),
      width: size.fullWidth(context),
      padding: isHome ? size.horizontal(context, .01) : size.horizontal(context, .05),
      child: Row(
        children: [
          isHome
              ? const SizedBox()
              : IconButton(
                  onPressed: () => router.pop(),
                  icon: Container(
                    width: size.width(context, .1),
                    height: size.width(context, .1),
                    margin: size.left(context, .01),
                    decoration: BoxDecoration(
                      color: AppColors.grey,
                      borderRadius: size.borderRadius(context, .02),
                    ),
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: AppColors.tertiary,
                    ),
                  ),
                ),
          isHome
              ? Text(
                  L10n.of(context).title,
                  style: AppStyles.heading1,
                )
              : const SizedBox(),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Container(
              width: size.width(context, .1),
              height: size.width(context, .1),
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
      ),
    );
  }
}
