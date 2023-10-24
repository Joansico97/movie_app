part of './router.dart';

Widget _homeBuilder(BuildContext context, GoRouterState state) => const HomeScreen();
Widget _detailsBuilder(BuildContext context, GoRouterState state) {
  final data = state.extra! as Map<String, dynamic>;
  return DetailsScreen(
    movie: data['movie'],
  );
}
