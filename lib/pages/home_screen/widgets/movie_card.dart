import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/constants/routes_names.dart';
import 'package:movie_app/core/routes/router.dart';
import 'package:movie_app/core/utils/utils.dart';
import 'package:movie_app/data/models/remote/response/movie.dart';

class MovieCard extends ConsumerWidget {
  const MovieCard({
    super.key,
    required this.movie,
  });
  final Movie movie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return GestureDetector(
      onTap: () => router.push(
        RoutesNames.details,
        extra: {'movie': movie},
      ),
      child: Hero(
        tag: movie.id,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: size.height(context, .2),
            margin: size.right(context, .05),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: size.borderRadius(context, .02),
            ),
            child: Stack(
              children: [
                Image.network(
                  'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(.5),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Spacer(),
                    Padding(
                      padding: size.symmetric(context, .02, .05),
                      child: Text(
                        movie.title,
                        style: AppStyles.body1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
