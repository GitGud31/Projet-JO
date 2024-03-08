// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'athlete_epreuve.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AthleteEpreuve _$AthleteEpreuveFromJson(Map<String, dynamic> json) {
  return _AthleteEpreuve.fromJson(json);
}

/// @nodoc
mixin _$AthleteEpreuve {
  int? get idEpreuve => throw _privateConstructorUsedError;
  int? get idAthlete => throw _privateConstructorUsedError;
  dynamic get createdAt => throw _privateConstructorUsedError;
  dynamic get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AthleteEpreuveCopyWith<AthleteEpreuve> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AthleteEpreuveCopyWith<$Res> {
  factory $AthleteEpreuveCopyWith(
          AthleteEpreuve value, $Res Function(AthleteEpreuve) then) =
      _$AthleteEpreuveCopyWithImpl<$Res, AthleteEpreuve>;
  @useResult
  $Res call(
      {int? idEpreuve, int? idAthlete, dynamic createdAt, dynamic updatedAt});
}

/// @nodoc
class _$AthleteEpreuveCopyWithImpl<$Res, $Val extends AthleteEpreuve>
    implements $AthleteEpreuveCopyWith<$Res> {
  _$AthleteEpreuveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idEpreuve = freezed,
    Object? idAthlete = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      idEpreuve: freezed == idEpreuve
          ? _value.idEpreuve
          : idEpreuve // ignore: cast_nullable_to_non_nullable
              as int?,
      idAthlete: freezed == idAthlete
          ? _value.idAthlete
          : idAthlete // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AthleteEpreuveImplCopyWith<$Res>
    implements $AthleteEpreuveCopyWith<$Res> {
  factory _$$AthleteEpreuveImplCopyWith(_$AthleteEpreuveImpl value,
          $Res Function(_$AthleteEpreuveImpl) then) =
      __$$AthleteEpreuveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? idEpreuve, int? idAthlete, dynamic createdAt, dynamic updatedAt});
}

/// @nodoc
class __$$AthleteEpreuveImplCopyWithImpl<$Res>
    extends _$AthleteEpreuveCopyWithImpl<$Res, _$AthleteEpreuveImpl>
    implements _$$AthleteEpreuveImplCopyWith<$Res> {
  __$$AthleteEpreuveImplCopyWithImpl(
      _$AthleteEpreuveImpl _value, $Res Function(_$AthleteEpreuveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idEpreuve = freezed,
    Object? idAthlete = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AthleteEpreuveImpl(
      idEpreuve: freezed == idEpreuve
          ? _value.idEpreuve
          : idEpreuve // ignore: cast_nullable_to_non_nullable
              as int?,
      idAthlete: freezed == idAthlete
          ? _value.idAthlete
          : idAthlete // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AthleteEpreuveImpl implements _AthleteEpreuve {
  const _$AthleteEpreuveImpl(
      {this.idEpreuve, this.idAthlete, this.createdAt, this.updatedAt});

  factory _$AthleteEpreuveImpl.fromJson(Map<String, dynamic> json) =>
      _$$AthleteEpreuveImplFromJson(json);

  @override
  final int? idEpreuve;
  @override
  final int? idAthlete;
  @override
  final dynamic createdAt;
  @override
  final dynamic updatedAt;

  @override
  String toString() {
    return 'AthleteEpreuve(idEpreuve: $idEpreuve, idAthlete: $idAthlete, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AthleteEpreuveImpl &&
            (identical(other.idEpreuve, idEpreuve) ||
                other.idEpreuve == idEpreuve) &&
            (identical(other.idAthlete, idAthlete) ||
                other.idAthlete == idAthlete) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idEpreuve,
      idAthlete,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AthleteEpreuveImplCopyWith<_$AthleteEpreuveImpl> get copyWith =>
      __$$AthleteEpreuveImplCopyWithImpl<_$AthleteEpreuveImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AthleteEpreuveImplToJson(
      this,
    );
  }
}

abstract class _AthleteEpreuve implements AthleteEpreuve {
  const factory _AthleteEpreuve(
      {final int? idEpreuve,
      final int? idAthlete,
      final dynamic createdAt,
      final dynamic updatedAt}) = _$AthleteEpreuveImpl;

  factory _AthleteEpreuve.fromJson(Map<String, dynamic> json) =
      _$AthleteEpreuveImpl.fromJson;

  @override
  int? get idEpreuve;
  @override
  int? get idAthlete;
  @override
  dynamic get createdAt;
  @override
  dynamic get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$AthleteEpreuveImplCopyWith<_$AthleteEpreuveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
