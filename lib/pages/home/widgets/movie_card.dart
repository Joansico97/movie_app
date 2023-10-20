import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/utils.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.height(context, .3),
      margin: size.right(context, .05),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: size.borderRadius(context, .02),
      ),
      child: Text(
        '$index',
        style: AppStyles.body1,
      ),
    );
  }
}
