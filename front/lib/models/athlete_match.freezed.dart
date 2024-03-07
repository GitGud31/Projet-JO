// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'athlete_match.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AthleteMatch _$AthleteMatchFromJson(Map<String, dynamic> json) {
  return _AthleteMatch.fromJson(json);
}

/// @nodoc
mixin _$AthleteMatch {
  String get idEpreuveAthlete => throw _privateConstructorUsedError;
  String get idAthlete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AthleteMatchCopyWith<AthleteMatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AthleteMatchCopyWith<$Res> {
  factory $AthleteMatchCopyWith(
          AthleteMatch value, $Res Function(AthleteMatch) then) =
      _$AthleteMatchCopyWithImpl<$Res, AthleteMatch>;
  @useResult
  $Res call({String idEpreuveAthlete, String idAthlete});
}

/// @nodoc
class _$AthleteMatchCopyWithImpl<$Res, $Val extends AthleteMatch>
    implements $AthleteMatchCopyWith<$Res> {
  _$AthleteMatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idEpreuveAthlete = null,
    Object? idAthlete = null,
  }) {
    return _then(_value.copyWith(
      idEpreuveAthlete: null == idEpreuveAthlete
          ? _value.idEpreuveAthlete
          : idEpreuveAthlete // ignore: cast_nullable_to_non_nullable
              as String,
      idAthlete: null == idAthlete
          ? _value.idAthlete
          : idAthlete // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AthleteMatchImplCopyWith<$Res>
    implements $AthleteMatchCopyWith<$Res> {
  factory _$$AthleteMatchImplCopyWith(
          _$AthleteMatchImpl value, $Res Function(_$AthleteMatchImpl) then) =
      __$$AthleteMatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String idEpreuveAthlete, String idAthlete});
}

/// @nodoc
class __$$AthleteMatchImplCopyWithImpl<$Res>
    extends _$AthleteMatchCopyWithImpl<$Res, _$AthleteMatchImpl>
    implements _$$AthleteMatchImplCopyWith<$Res> {
  __$$AthleteMatchImplCopyWithImpl(
      _$AthleteMatchImpl _value, $Res Function(_$AthleteMatchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idEpreuveAthlete = null,
    Object? idAthlete = null,
  }) {
    return _then(_$AthleteMatchImpl(
      idEpreuveAthlete: null == idEpreuveAthlete
          ? _value.idEpreuveAthlete
          : idEpreuveAthlete // ignore: cast_nullable_to_non_nullable
              as String,
      idAthlete: null == idAthlete
          ? _value.idAthlete
          : idAthlete // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AthleteMatchImpl implements _AthleteMatch {
  const _$AthleteMatchImpl(
      {required this.idEpreuveAthlete, required this.idAthlete});

  factory _$AthleteMatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$AthleteMatchImplFromJson(json);

  @override
  final String idEpreuveAthlete;
  @override
  final String idAthlete;

  @override
  String toString() {
    return 'AthleteMatch(idEpreuveAthlete: $idEpreuveAthlete, idAthlete: $idAthlete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AthleteMatchImpl &&
            (identical(other.idEpreuveAthlete, idEpreuveAthlete) ||
                other.idEpreuveAthlete == idEpreuveAthlete) &&
            (identical(other.idAthlete, idAthlete) ||
                other.idAthlete == idAthlete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idEpreuveAthlete, idAthlete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AthleteMatchImplCopyWith<_$AthleteMatchImpl> get copyWith =>
      __$$AthleteMatchImplCopyWithImpl<_$AthleteMatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AthleteMatchImplToJson(
      this,
    );
  }
}

abstract class _AthleteMatch implements AthleteMatch {
  const factory _AthleteMatch(
      {required final String idEpreuveAthlete,
      required final String idAthlete}) = _$AthleteMatchImpl;

  factory _AthleteMatch.fromJson(Map<String, dynamic> json) =
      _$AthleteMatchImpl.fromJson;

  @override
  String get idEpreuveAthlete;
  @override
  String get idAthlete;
  @override
  @JsonKey(ignore: true)
  _$$AthleteMatchImplCopyWith<_$AthleteMatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
