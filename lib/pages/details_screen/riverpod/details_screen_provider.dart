import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_screen_provider.freezed.dart';
part 'details_screen_provider.g.dart';

final detailScreenProvider =
    StateNotifierProvider<DetailScreenEvents, DetailScreenModel>((ref) => DetailScreenEvents(ref));

@freezed
class DetailScreenModel with _$DetailScreenModel {
  const factory DetailScreenModel({
    required String title,
  }) = _DetailScreenModel;

  factory DetailScreenModel.fromJson(Map<String, dynamic> json) => _$DetailScreenModelFromJson(json);
}

class DetailScreenEvents extends StateNotifier<DetailScreenModel> {
  DetailScreenEvents(this.ref)
      : super(
          const DetailScreenModel(
            title: '',
          ),
        );
  final Ref ref;

  String buildImage({required String path}) => 'https://image.tmdb.org/t/p/w500$path';
}
