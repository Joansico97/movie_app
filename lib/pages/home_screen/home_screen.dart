import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/data/models/remote/response/movie.dart';
import 'package:movie_app/pages/home_screen/riverpod/home_screen_provider.dart';
import 'package:movie_app/pages/home_screen/widgets/widgets.dart';
import 'package:movie_app/widgets/widgets.dart';
import 'package:movie_app/core/utils/utils.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    ref.read(homeScreenProvider.notifier).getMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeScreenProvider);
    final notifier = ref.watch(homeScreenProvider.notifier);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => notifier.getMovies(),
        child: const Icon(Icons.refresh),
      ),
      body: Container(
        height: size.fullHeight(context),
        width: size.fullWidth(context),
        padding: size.symmetric(context, .05, .01),
        child: Column(
          children: [
            const CustomAppBar(isHome: true),
            Container(
              height: size.height(context, .1),
              width: size.fullWidth(context),
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () => notifier.getMovies(),
                child: const Text(
                  'Popular Movies',
                  style: AppStyles.heading2,
                ),
              ),
            ),
            SizedBox(height: size.height(context, .01)),
            MovieSlider(
              count: state.movies.length,
              movie: state.movies,
            ),
          ],
        ),
      ),
    );
  }
}

// class MovieSlider extends ConsumerStatefulWidget {
// const MovieSlider({
//   super.key,
//   required this.movie,
//   required this.count,
// });

// final List<Movie> movie;
// final int count;

//   @override
//   ConsumerState<MovieSlider> createState() => _MovieSliderState();
// }

// class _MovieSliderState extends State<MovieSlider> {

//   final ScrollController _scrollController = ScrollController();

//   @override
//   void initState() {
//     super.initState();
//     _scrollController.addListener(() {
//       if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
//         ref.read(homeScreenProvider.notifier).getMovies();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {

//   }
// }

class MovieSlider extends ConsumerStatefulWidget {
  const MovieSlider({
    super.key,
    required this.movie,
    required this.count,
  });

  final List<Movie> movie;
  final int count;

  @override
  ConsumerState<MovieSlider> createState() => _MovieSliderState();
}

class _MovieSliderState extends ConsumerState<MovieSlider> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 500) {
        ref.read(homeScreenProvider.notifier).getMovies();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height(context, .3),
      width: size.fullWidth(context),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        controller: _scrollController,
        itemCount: widget.count,
        itemBuilder: (context, index) {
          return MovieCard(
            movie: widget.movie[index],
          );
        },
      ),
    );
  }
}
