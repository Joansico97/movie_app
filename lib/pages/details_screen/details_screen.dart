import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/utils/utils.dart';
import 'package:movie_app/data/models/remote/response/movie.dart';
import 'package:movie_app/pages/details_screen/riverpod/details_screen_provider.dart';
import 'package:movie_app/widgets/widgets.dart';

class DetailsScreen extends ConsumerWidget {
  const DetailsScreen({
    super.key,
    required this.movie,
  });

  final Movie movie;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(detailScreenProvider.notifier);
    return Scaffold(
      body: Container(
        height: size.fullHeight(context),
        width: size.fullWidth(context),
        alignment: Alignment.center,
        child: Stack(
          children: [
            SizedBox(
              height: size.height(context, .5),
              width: size.fullWidth(context),
              child: Hero(
                tag: movie.id,
                child: Image.network(
                  notifier.buildImage(path: movie.posterPath),
                  fit: BoxFit.fitWidth,
                ),
              ),
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
                const CustomAppBar(isHome: false),
                SizedBox(height: size.height(context, .35)),
                Column(
                  children: [
                    Padding(
                      padding: size.horizontal(context, .05),
                      child: SizedBox(
                        width: size.fullWidth(context),
                        child: Text(
                          movie.title,
                          textAlign: TextAlign.left,
                          style: AppStyles.heading1.copyWith(
                            fontSize: size.width(context, .1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height(context, .02)),
                    SizedBox(
                      width: size.width(context, .9),
                      child: Text(
                        movie.overview,
                        textAlign: TextAlign.justify,
                        style: AppStyles.body1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
