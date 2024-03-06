// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'athlete.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Athlete _$AthleteFromJson(Map<String, dynamic> json) {
  return _Athlete.fromJson(json);
}

/// @nodoc
mixin _$Athlete {
  String get id => throw _privateConstructorUsedError;
  String get nom => throw _privateConstructorUsedError;
  String get prenom => throw _privateConstructorUsedError;
  String get idPays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AthleteCopyWith<Athlete> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AthleteCopyWith<$Res> {
  factory $AthleteCopyWith(Athlete value, $Res Function(Athlete) then) =
      _$AthleteCopyWithImpl<$Res, Athlete>;
  @useResult
  $Res call({String id, String nom, String prenom, String idPays});
}

/// @nodoc
class _$AthleteCopyWithImpl<$Res, $Val extends Athlete>
    implements $AthleteCopyWith<$Res> {
  _$AthleteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nom = null,
    Object? prenom = null,
    Object? idPays = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nom: null == nom
          ? _value.nom
          : nom // ignore: cast_nullable_to_non_nullable
              as String,
      prenom: null == prenom
          ? _value.prenom
          : prenom // ignore: cast_nullable_to_non_nullable
              as String,
      idPays: null == idPays
          ? _value.idPays
          : idPays // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AthleteImplCopyWith<$Res> implements $AthleteCopyWith<$Res> {
  factory _$$AthleteImplCopyWith(
          _$AthleteImpl value, $Res Function(_$AthleteImpl) then) =
      __$$AthleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String nom, String prenom, String idPays});
}

/// @nodoc
class __$$AthleteImplCopyWithImpl<$Res>
    extends _$AthleteCopyWithImpl<$Res, _$AthleteImpl>
    implements _$$AthleteImplCopyWith<$Res> {
  __$$AthleteImplCopyWithImpl(
      _$AthleteImpl _value, $Res Function(_$AthleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nom = null,
    Object? prenom = null,
    Object? idPays = null,
  }) {
    return _then(_$AthleteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nom: null == nom
          ? _value.nom
          : nom // ignore: cast_nullable_to_non_nullable
              as String,
      prenom: null == prenom
          ? _value.prenom
          : prenom // ignore: cast_nullable_to_non_nullable
              as String,
      idPays: null == idPays
          ? _value.idPays
          : idPays // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AthleteImpl implements _Athlete {
  const _$AthleteImpl(
      {required this.id,
      required this.nom,
      required this.prenom,
      required this.idPays});

  factory _$AthleteImpl.fromJson(Map<String, dynamic> json) =>
      _$$AthleteImplFromJson(json);

  @override
  final String id;
  @override
  final String nom;
  @override
  final String prenom;
  @override
  final String idPays;

  @override
  String toString() {
    return 'Athlete(id: $id, nom: $nom, prenom: $prenom, idPays: $idPays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AthleteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nom, nom) || other.nom == nom) &&
            (identical(other.prenom, prenom) || other.prenom == prenom) &&
            (identical(other.idPays, idPays) || other.idPays == idPays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nom, prenom, idPays);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AthleteImplCopyWith<_$AthleteImpl> get copyWith =>
      __$$AthleteImplCopyWithImpl<_$AthleteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AthleteImplToJson(
      this,
    );
  }
}

abstract class _Athlete implements Athlete {
  const factory _Athlete(
      {required final String id,
      required final String nom,
      required final String prenom,
      required final String idPays}) = _$AthleteImpl;

  factory _Athlete.fromJson(Map<String, dynamic> json) = _$AthleteImpl.fromJson;

  @override
  String get id;
  @override
  String get nom;
  @override
  String get prenom;
  @override
  String get idPays;
  @override
  @JsonKey(ignore: true)
  _$$AthleteImplCopyWith<_$AthleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
