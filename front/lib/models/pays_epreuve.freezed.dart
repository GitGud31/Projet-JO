// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pays_epreuve.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaysEpreuve _$PaysEpreuveFromJson(Map<String, dynamic> json) {
  return _PaysEpreuve.fromJson(json);
}

/// @nodoc
mixin _$PaysEpreuve {
  int get idEpreuvePays => throw _privateConstructorUsedError;
  int get idPays => throw _privateConstructorUsedError;
  int get libelle => throw _privateConstructorUsedError;
  dynamic get createdAt => throw _privateConstructorUsedError;
  dynamic get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaysEpreuveCopyWith<PaysEpreuve> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaysEpreuveCopyWith<$Res> {
  factory $PaysEpreuveCopyWith(
          PaysEpreuve value, $Res Function(PaysEpreuve) then) =
      _$PaysEpreuveCopyWithImpl<$Res, PaysEpreuve>;
  @useResult
  $Res call(
      {int idEpreuvePays,
      int idPays,
      int libelle,
      dynamic createdAt,
      dynamic updatedAt});
}

/// @nodoc
class _$PaysEpreuveCopyWithImpl<$Res, $Val extends PaysEpreuve>
    implements $PaysEpreuveCopyWith<$Res> {
  _$PaysEpreuveCopyWithImpl(this._value, this._then);

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
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      idEpreuvePays: null == idEpreuvePays
          ? _value.idEpreuvePays
          : idEpreuvePays // ignore: cast_nullable_to_non_nullable
              as int,
      idPays: null == idPays
          ? _value.idPays
          : idPays // ignore: cast_nullable_to_non_nullable
              as int,
      libelle: null == libelle
          ? _value.libelle
          : libelle // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$PaysEpreuveImplCopyWith<$Res>
    implements $PaysEpreuveCopyWith<$Res> {
  factory _$$PaysEpreuveImplCopyWith(
          _$PaysEpreuveImpl value, $Res Function(_$PaysEpreuveImpl) then) =
      __$$PaysEpreuveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idEpreuvePays,
      int idPays,
      int libelle,
      dynamic createdAt,
      dynamic updatedAt});
}

/// @nodoc
class __$$PaysEpreuveImplCopyWithImpl<$Res>
    extends _$PaysEpreuveCopyWithImpl<$Res, _$PaysEpreuveImpl>
    implements _$$PaysEpreuveImplCopyWith<$Res> {
  __$$PaysEpreuveImplCopyWithImpl(
      _$PaysEpreuveImpl _value, $Res Function(_$PaysEpreuveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idEpreuvePays = null,
    Object? idPays = null,
    Object? libelle = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PaysEpreuveImpl(
      idEpreuvePays: null == idEpreuvePays
          ? _value.idEpreuvePays
          : idEpreuvePays // ignore: cast_nullable_to_non_nullable
              as int,
      idPays: null == idPays
          ? _value.idPays
          : idPays // ignore: cast_nullable_to_non_nullable
              as int,
      libelle: null == libelle
          ? _value.libelle
          : libelle // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$PaysEpreuveImpl implements _PaysEpreuve {
  const _$PaysEpreuveImpl(
      {required this.idEpreuvePays,
      required this.idPays,
      required this.libelle,
      required this.createdAt,
      required this.updatedAt});

  factory _$PaysEpreuveImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaysEpreuveImplFromJson(json);

  @override
  final int idEpreuvePays;
  @override
  final int idPays;
  @override
  final int libelle;
  @override
  final dynamic createdAt;
  @override
  final dynamic updatedAt;

  @override
  String toString() {
    return 'PaysEpreuve(idEpreuvePays: $idEpreuvePays, idPays: $idPays, libelle: $libelle, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaysEpreuveImpl &&
            (identical(other.idEpreuvePays, idEpreuvePays) ||
                other.idEpreuvePays == idEpreuvePays) &&
            (identical(other.idPays, idPays) || other.idPays == idPays) &&
            (identical(other.libelle, libelle) || other.libelle == libelle) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idEpreuvePays,
      idPays,
      libelle,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaysEpreuveImplCopyWith<_$PaysEpreuveImpl> get copyWith =>
      __$$PaysEpreuveImplCopyWithImpl<_$PaysEpreuveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaysEpreuveImplToJson(
      this,
    );
  }
}

abstract class _PaysEpreuve implements PaysEpreuve {
  const factory _PaysEpreuve(
      {required final int idEpreuvePays,
      required final int idPays,
      required final int libelle,
      required final dynamic createdAt,
      required final dynamic updatedAt}) = _$PaysEpreuveImpl;

  factory _PaysEpreuve.fromJson(Map<String, dynamic> json) =
      _$PaysEpreuveImpl.fromJson;

  @override
  int get idEpreuvePays;
  @override
  int get idPays;
  @override
  int get libelle;
  @override
  dynamic get createdAt;
  @override
  dynamic get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PaysEpreuveImplCopyWith<_$PaysEpreuveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
