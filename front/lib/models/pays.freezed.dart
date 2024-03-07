// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pays.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pays _$PaysFromJson(Map<String, dynamic> json) {
  return _Pays.fromJson(json);
}

/// @nodoc
mixin _$Pays {
  int get id => throw _privateConstructorUsedError;
  String get libelle => throw _privateConstructorUsedError;
  dynamic get createdAt => throw _privateConstructorUsedError;
  dynamic get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaysCopyWith<Pays> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaysCopyWith<$Res> {
  factory $PaysCopyWith(Pays value, $Res Function(Pays) then) =
      _$PaysCopyWithImpl<$Res, Pays>;
  @useResult
  $Res call({int id, String libelle, dynamic createdAt, dynamic updatedAt});
}

/// @nodoc
class _$PaysCopyWithImpl<$Res, $Val extends Pays>
    implements $PaysCopyWith<$Res> {
  _$PaysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? libelle = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      libelle: null == libelle
          ? _value.libelle
          : libelle // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$PaysImplCopyWith<$Res> implements $PaysCopyWith<$Res> {
  factory _$$PaysImplCopyWith(
          _$PaysImpl value, $Res Function(_$PaysImpl) then) =
      __$$PaysImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String libelle, dynamic createdAt, dynamic updatedAt});
}

/// @nodoc
class __$$PaysImplCopyWithImpl<$Res>
    extends _$PaysCopyWithImpl<$Res, _$PaysImpl>
    implements _$$PaysImplCopyWith<$Res> {
  __$$PaysImplCopyWithImpl(_$PaysImpl _value, $Res Function(_$PaysImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? libelle = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PaysImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      libelle: null == libelle
          ? _value.libelle
          : libelle // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$PaysImpl implements _Pays {
  const _$PaysImpl(
      {required this.id,
      required this.libelle,
      required this.createdAt,
      required this.updatedAt});

  factory _$PaysImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaysImplFromJson(json);

  @override
  final int id;
  @override
  final String libelle;
  @override
  final dynamic createdAt;
  @override
  final dynamic updatedAt;

  @override
  String toString() {
    return 'Pays(id: $id, libelle: $libelle, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaysImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.libelle, libelle) || other.libelle == libelle) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      libelle,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaysImplCopyWith<_$PaysImpl> get copyWith =>
      __$$PaysImplCopyWithImpl<_$PaysImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaysImplToJson(
      this,
    );
  }
}

abstract class _Pays implements Pays {
  const factory _Pays(
      {required final int id,
      required final String libelle,
      required final dynamic createdAt,
      required final dynamic updatedAt}) = _$PaysImpl;

  factory _Pays.fromJson(Map<String, dynamic> json) = _$PaysImpl.fromJson;

  @override
  int get id;
  @override
  String get libelle;
  @override
  dynamic get createdAt;
  @override
  dynamic get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PaysImplCopyWith<_$PaysImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
