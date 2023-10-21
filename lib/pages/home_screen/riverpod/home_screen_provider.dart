import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/data/models/remote/response/movie.dart';
import 'package:movie_app/data/resources/api_client.dart';

part 'home_screen_provider.freezed.dart';
part 'home_screen_provider.g.dart';

final homeScreenProvider = StateNotifierProvider<HomeScreenEvents, HomeScreenModel>((ref) => HomeScreenEvents(ref));

@freezed
class HomeScreenModel with _$HomeScreenModel {
  const factory HomeScreenModel({
    required int index,
    required List<Movie> movies,
  }) = _HomeScreenModel;

  factory HomeScreenModel.fromJson(Map<String, dynamic> json) => _$HomeScreenModelFromJson(json);
}

class HomeScreenEvents extends StateNotifier<HomeScreenModel> {
  HomeScreenEvents(this.ref)
      : super(
          const HomeScreenModel(
            index: 1,
            movies: [],
          ),
        );
  final Ref ref;

  Future<void> getMovies() async {
    final listTmp = <Movie>[];
    final response = await apiClient.get(path: 'movie/upcoming?language=es-MX&page=', page: state.index);
    for (final element in response.data['results']) {
      listTmp.add(Movie.fromJson(element));
    }
    state = state.copyWith(movies: [...state.movies, ...listTmp]);
    state = state.copyWith(index: state.index + 1);
  }
}
