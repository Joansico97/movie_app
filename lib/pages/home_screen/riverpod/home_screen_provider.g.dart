// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeScreenModelImpl _$$HomeScreenModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeScreenModelImpl(
      index: json['index'] as int,
      movies: (json['movies'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
      listSearch: (json['listSearch'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeScreenModelImplToJson(
        _$HomeScreenModelImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'movies': instance.movies,
      'listSearch': instance.listSearch,
    };
