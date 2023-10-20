import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_provider.freezed.dart';
part 'home_screen_provider.g.dart';

final homeScreenProvider = StateNotifierProvider<HomeScreenEvents, HomeScreenModel>((ref) => HomeScreenEvents(ref));

@freezed
class HomeScreenModel with _$HomeScreenModel {
  const factory HomeScreenModel({
    required String title,
  }) = _HomeScreenModel;

  factory HomeScreenModel.fromJson(Map<String, dynamic> json) => _$HomeScreenModelFromJson(json);
}

class HomeScreenEvents extends StateNotifier<HomeScreenModel> {
  HomeScreenEvents(this.ref) : super(const HomeScreenModel(title: ''));
  final Ref ref;
}
