// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sport _$SportFromJson(Map<String, dynamic> json) {
  return _Sport.fromJson(json);
}

/// @nodoc
mixin _$Sport {
  String get id => throw _privateConstructorUsedError;
  String get libelle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SportCopyWith<Sport> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SportCopyWith<$Res> {
  factory $SportCopyWith(Sport value, $Res Function(Sport) then) =
      _$SportCopyWithImpl<$Res, Sport>;
  @useResult
  $Res call({String id, String libelle});
}

/// @nodoc
class _$SportCopyWithImpl<$Res, $Val extends Sport>
    implements $SportCopyWith<$Res> {
  _$SportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? libelle = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      libelle: null == libelle
          ? _value.libelle
          : libelle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SportImplCopyWith<$Res> implements $SportCopyWith<$Res> {
  factory _$$SportImplCopyWith(
          _$SportImpl value, $Res Function(_$SportImpl) then) =
      __$$SportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String libelle});
}

/// @nodoc
class __$$SportImplCopyWithImpl<$Res>
    extends _$SportCopyWithImpl<$Res, _$SportImpl>
    implements _$$SportImplCopyWith<$Res> {
  __$$SportImplCopyWithImpl(
      _$SportImpl _value, $Res Function(_$SportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? libelle = null,
  }) {
    return _then(_$SportImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
class _$SportImpl implements _Sport {
  const _$SportImpl({required this.id, required this.libelle});

  factory _$SportImpl.fromJson(Map<String, dynamic> json) =>
      _$$SportImplFromJson(json);

  @override
  final String id;
  @override
  final String libelle;

  @override
  String toString() {
    return 'Sport(id: $id, libelle: $libelle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.libelle, libelle) || other.libelle == libelle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, libelle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SportImplCopyWith<_$SportImpl> get copyWith =>
      __$$SportImplCopyWithImpl<_$SportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SportImplToJson(
      this,
    );
  }
}

abstract class _Sport implements Sport {
  const factory _Sport(
      {required final String id, required final String libelle}) = _$SportImpl;

  factory _Sport.fromJson(Map<String, dynamic> json) = _$SportImpl.fromJson;

  @override
  String get id;
  @override
  String get libelle;
  @override
  @JsonKey(ignore: true)
  _$$SportImplCopyWith<_$SportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
