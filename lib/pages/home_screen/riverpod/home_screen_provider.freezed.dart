// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeScreenModel _$HomeScreenModelFromJson(Map<String, dynamic> json) {
  return _HomeScreenModel.fromJson(json);
}

/// @nodoc
mixin _$HomeScreenModel {
  int get index => throw _privateConstructorUsedError;
  List<Movie> get movies => throw _privateConstructorUsedError;
  List<Movie> get listSearch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeScreenModelCopyWith<HomeScreenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenModelCopyWith<$Res> {
  factory $HomeScreenModelCopyWith(
          HomeScreenModel value, $Res Function(HomeScreenModel) then) =
      _$HomeScreenModelCopyWithImpl<$Res, HomeScreenModel>;
  @useResult
  $Res call({int index, List<Movie> movies, List<Movie> listSearch});
}

/// @nodoc
class _$HomeScreenModelCopyWithImpl<$Res, $Val extends HomeScreenModel>
    implements $HomeScreenModelCopyWith<$Res> {
  _$HomeScreenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? movies = null,
    Object? listSearch = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      listSearch: null == listSearch
          ? _value.listSearch
          : listSearch // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeScreenModelImplCopyWith<$Res>
    implements $HomeScreenModelCopyWith<$Res> {
  factory _$$HomeScreenModelImplCopyWith(_$HomeScreenModelImpl value,
          $Res Function(_$HomeScreenModelImpl) then) =
      __$$HomeScreenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, List<Movie> movies, List<Movie> listSearch});
}

/// @nodoc
class __$$HomeScreenModelImplCopyWithImpl<$Res>
    extends _$HomeScreenModelCopyWithImpl<$Res, _$HomeScreenModelImpl>
    implements _$$HomeScreenModelImplCopyWith<$Res> {
  __$$HomeScreenModelImplCopyWithImpl(
      _$HomeScreenModelImpl _value, $Res Function(_$HomeScreenModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? movies = null,
    Object? listSearch = null,
  }) {
    return _then(_$HomeScreenModelImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      listSearch: null == listSearch
          ? _value._listSearch
          : listSearch // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeScreenModelImpl implements _HomeScreenModel {
  const _$HomeScreenModelImpl(
      {required this.index,
      required final List<Movie> movies,
      required final List<Movie> listSearch})
      : _movies = movies,
        _listSearch = listSearch;

  factory _$HomeScreenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeScreenModelImplFromJson(json);

  @override
  final int index;
  final List<Movie> _movies;
  @override
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  final List<Movie> _listSearch;
  @override
  List<Movie> get listSearch {
    if (_listSearch is EqualUnmodifiableListView) return _listSearch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listSearch);
  }

  @override
  String toString() {
    return 'HomeScreenModel(index: $index, movies: $movies, listSearch: $listSearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenModelImpl &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            const DeepCollectionEquality()
                .equals(other._listSearch, _listSearch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      index,
      const DeepCollectionEquality().hash(_movies),
      const DeepCollectionEquality().hash(_listSearch));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenModelImplCopyWith<_$HomeScreenModelImpl> get copyWith =>
      __$$HomeScreenModelImplCopyWithImpl<_$HomeScreenModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeScreenModelImplToJson(
      this,
    );
  }
}

abstract class _HomeScreenModel implements HomeScreenModel {
  const factory _HomeScreenModel(
      {required final int index,
      required final List<Movie> movies,
      required final List<Movie> listSearch}) = _$HomeScreenModelImpl;

  factory _HomeScreenModel.fromJson(Map<String, dynamic> json) =
      _$HomeScreenModelImpl.fromJson;

  @override
  int get index;
  @override
  List<Movie> get movies;
  @override
  List<Movie> get listSearch;
  @override
  @JsonKey(ignore: true)
  _$$HomeScreenModelImplCopyWith<_$HomeScreenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
