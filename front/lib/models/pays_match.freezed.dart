// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pays_match.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaysMatch _$PaysMatchFromJson(Map<String, dynamic> json) {
  return _PaysMatch.fromJson(json);
}

/// @nodoc
mixin _$PaysMatch {
  String get idEpreuvePays => throw _privateConstructorUsedError;
  String get idPays => throw _privateConstructorUsedError;
  String get libelle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaysMatchCopyWith<PaysMatch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaysMatchCopyWith<$Res> {
  factory $PaysMatchCopyWith(PaysMatch value, $Res Function(PaysMatch) then) =
      _$PaysMatchCopyWithImpl<$Res, PaysMatch>;
  @useResult
  $Res call({String idEpreuvePays, String idPays, String libelle});
}

/// @nodoc
class _$PaysMatchCopyWithImpl<$Res, $Val extends PaysMatch>
    implements $PaysMatchCopyWith<$Res> {
  _$PaysMatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idEpreuvePays = null,
    Object? idPays = null,
    Object? libelle = null,
  }) {
    return _then(_value.copyWith(
      idEpreuvePays: null == idEpreuvePays
          ? _value.idEpreuvePays
          : idEpreuvePays // ignore: cast_nullable_to_non_nullable
              as String,
      idPays: null == idPays
          ? _value.idPays
          : idPays // ignore: cast_nullable_to_non_nullable
              as String,
      libelle: null == libelle
          ? _value.libelle
          : libelle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaysMatchImplCopyWith<$Res>
    implements $PaysMatchCopyWith<$Res> {
  factory _$$PaysMatchImplCopyWith(
          _$PaysMatchImpl value, $Res Function(_$PaysMatchImpl) then) =
      __$$PaysMatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String idEpreuvePays, String idPays, String libelle});
}

/// @nodoc
class __$$PaysMatchImplCopyWithImpl<$Res>
    extends _$PaysMatchCopyWithImpl<$Res, _$PaysMatchImpl>
    implements _$$PaysMatchImplCopyWith<$Res> {
  __$$PaysMatchImplCopyWithImpl(
      _$PaysMatchImpl _value, $Res Function(_$PaysMatchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idEpreuvePays = null,
    Object? idPays = null,
    Object? libelle = null,
  }) {
    return _then(_$PaysMatchImpl(
      idEpreuvePays: null == idEpreuvePays
          ? _value.idEpreuvePays
          : idEpreuvePays // ignore: cast_nullable_to_non_nullable
              as String,
      idPays: null == idPays
          ? _value.idPays
          : idPays // ignore: cast_nullable_to_non_nullable
              as String,
      libelle: null == libelle
          ? _value.libelle
          : libelle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaysMatchImpl implements _PaysMatch {
  const _$PaysMatchImpl(
      {required this.idEpreuvePays,
      required this.idPays,
      required this.libelle});

  factory _$PaysMatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaysMatchImplFromJson(json);

  @override
  final String idEpreuvePays;
  @override
  final String idPays;
  @override
  final String libelle;

  @override
  String toString() {
    return 'PaysMatch(idEpreuvePays: $idEpreuvePays, idPays: $idPays, libelle: $libelle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaysMatchImpl &&
            (identical(other.idEpreuvePays, idEpreuvePays) ||
                other.idEpreuvePays == idEpreuvePays) &&
            (identical(other.idPays, idPays) || other.idPays == idPays) &&
            (identical(other.libelle, libelle) || other.libelle == libelle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idEpreuvePays, idPays, libelle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaysMatchImplCopyWith<_$PaysMatchImpl> get copyWith =>
      __$$PaysMatchImplCopyWithImpl<_$PaysMatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaysMatchImplToJson(
      this,
    );
  }
}

abstract class _PaysMatch implements PaysMatch {
  const factory _PaysMatch(
      {required final String idEpreuvePays,
      required final String idPays,
      required final String libelle}) = _$PaysMatchImpl;

  factory _PaysMatch.fromJson(Map<String, dynamic> json) =
      _$PaysMatchImpl.fromJson;

  @override
  String get idEpreuvePays;
  @override
  String get idPays;
  @override
  String get libelle;
  @override
  @JsonKey(ignore: true)
  _$$PaysMatchImplCopyWith<_$PaysMatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
