import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/constants/routes_names.dart';
import 'package:movie_app/core/utils/utils.dart';
import 'package:movie_app/gen/l10n.dart';
import 'package:movie_app/pages/home_screen/riverpod/home_screen_provider.dart';

class MovieSearDelegate extends SearchDelegate {
  MovieSearDelegate(this.context, this.ref);

  BuildContext context;
  WidgetRef ref;

  @override
  String? get searchFieldLabel => L10n.of(context).search;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = '',
        icon: const Icon(
          Icons.close,
        ),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => context.pop(),
      icon: const Icon(
        Icons.arrow_back_ios_new,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text(
      'results',
      style: AppStyles.body1,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Center(
        child: Icon(
          Icons.movie_edit,
          size: size.width(context, .3),
          color: AppColors.tertiary,
        ),
      );
    }
    if (query.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(homeScreenProvider.notifier).getSearchMovie(movie: query);
      });
    }
    return ListView.builder(
      itemCount: ref.watch(homeScreenProvider).listSearch.length,
      itemBuilder: (_, int index) {
        final movie = ref.watch(homeScreenProvider).listSearch[index];
        return ListTile(
          onTap: () => context.push(
            RoutesNames.details,
            extra: {
              'movie': movie,
            },
          ),
          leading: Image.network(
            'https://image.tmdb.org/t/p/w500${movie.posterPath}',
            width: 50,
            fit: BoxFit.cover,
          ),
          title: Text(
            movie.title,
            style: AppStyles.body1,
          ),
        );
      },
    );
  }
}
