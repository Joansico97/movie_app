// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_screen_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailScreenModel _$DetailScreenModelFromJson(Map<String, dynamic> json) {
  return _DetailScreenModel.fromJson(json);
}

/// @nodoc
mixin _$DetailScreenModel {
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailScreenModelCopyWith<DetailScreenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailScreenModelCopyWith<$Res> {
  factory $DetailScreenModelCopyWith(
          DetailScreenModel value, $Res Function(DetailScreenModel) then) =
      _$DetailScreenModelCopyWithImpl<$Res, DetailScreenModel>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$DetailScreenModelCopyWithImpl<$Res, $Val extends DetailScreenModel>
    implements $DetailScreenModelCopyWith<$Res> {
  _$DetailScreenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailScreenModelImplCopyWith<$Res>
    implements $DetailScreenModelCopyWith<$Res> {
  factory _$$DetailScreenModelImplCopyWith(_$DetailScreenModelImpl value,
          $Res Function(_$DetailScreenModelImpl) then) =
      __$$DetailScreenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$DetailScreenModelImplCopyWithImpl<$Res>
    extends _$DetailScreenModelCopyWithImpl<$Res, _$DetailScreenModelImpl>
    implements _$$DetailScreenModelImplCopyWith<$Res> {
  __$$DetailScreenModelImplCopyWithImpl(_$DetailScreenModelImpl _value,
      $Res Function(_$DetailScreenModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$DetailScreenModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailScreenModelImpl implements _DetailScreenModel {
  const _$DetailScreenModelImpl({required this.title});

  factory _$DetailScreenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailScreenModelImplFromJson(json);

  @override
  final String title;

  @override
  String toString() {
    return 'DetailScreenModel(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailScreenModelImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailScreenModelImplCopyWith<_$DetailScreenModelImpl> get copyWith =>
      __$$DetailScreenModelImplCopyWithImpl<_$DetailScreenModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailScreenModelImplToJson(
      this,
    );
  }
}

abstract class _DetailScreenModel implements DetailScreenModel {
  const factory _DetailScreenModel({required final String title}) =
      _$DetailScreenModelImpl;

  factory _DetailScreenModel.fromJson(Map<String, dynamic> json) =
      _$DetailScreenModelImpl.fromJson;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$DetailScreenModelImplCopyWith<_$DetailScreenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
