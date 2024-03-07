// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epreuve.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Epreuve _$EpreuveFromJson(Map<String, dynamic> json) {
  return _Epreuve.fromJson(json);
}

/// @nodoc
mixin _$Epreuve {
  String get id => throw _privateConstructorUsedError;
  String get libelle => throw _privateConstructorUsedError;
  String get site => throw _privateConstructorUsedError;
  String get premier => throw _privateConstructorUsedError;
  String get deuxieme => throw _privateConstructorUsedError;
  String get troisieme => throw _privateConstructorUsedError;
  String get isSport => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpreuveCopyWith<Epreuve> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpreuveCopyWith<$Res> {
  factory $EpreuveCopyWith(Epreuve value, $Res Function(Epreuve) then) =
      _$EpreuveCopyWithImpl<$Res, Epreuve>;
  @useResult
  $Res call(
      {String id,
      String libelle,
      String site,
      String premier,
      String deuxieme,
      String troisieme,
      String isSport,
      DateTime date});
}

/// @nodoc
class _$EpreuveCopyWithImpl<$Res, $Val extends Epreuve>
    implements $EpreuveCopyWith<$Res> {
  _$EpreuveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? libelle = null,
    Object? site = null,
    Object? premier = null,
    Object? deuxieme = null,
    Object? troisieme = null,
    Object? isSport = null,
    Object? date = null,
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
      site: null == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String,
      premier: null == premier
          ? _value.premier
          : premier // ignore: cast_nullable_to_non_nullable
              as String,
      deuxieme: null == deuxieme
          ? _value.deuxieme
          : deuxieme // ignore: cast_nullable_to_non_nullable
              as String,
      troisieme: null == troisieme
          ? _value.troisieme
          : troisieme // ignore: cast_nullable_to_non_nullable
              as String,
      isSport: null == isSport
          ? _value.isSport
          : isSport // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpreuveImplCopyWith<$Res> implements $EpreuveCopyWith<$Res> {
  factory _$$EpreuveImplCopyWith(
          _$EpreuveImpl value, $Res Function(_$EpreuveImpl) then) =
      __$$EpreuveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String libelle,
      String site,
      String premier,
      String deuxieme,
      String troisieme,
      String isSport,
      DateTime date});
}

/// @nodoc
class __$$EpreuveImplCopyWithImpl<$Res>
    extends _$EpreuveCopyWithImpl<$Res, _$EpreuveImpl>
    implements _$$EpreuveImplCopyWith<$Res> {
  __$$EpreuveImplCopyWithImpl(
      _$EpreuveImpl _value, $Res Function(_$EpreuveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? libelle = null,
    Object? site = null,
    Object? premier = null,
    Object? deuxieme = null,
    Object? troisieme = null,
    Object? isSport = null,
    Object? date = null,
  }) {
    return _then(_$EpreuveImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      libelle: null == libelle
          ? _value.libelle
          : libelle // ignore: cast_nullable_to_non_nullable
              as String,
      site: null == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String,
      premier: null == premier
          ? _value.premier
          : premier // ignore: cast_nullable_to_non_nullable
              as String,
      deuxieme: null == deuxieme
          ? _value.deuxieme
          : deuxieme // ignore: cast_nullable_to_non_nullable
              as String,
      troisieme: null == troisieme
          ? _value.troisieme
          : troisieme // ignore: cast_nullable_to_non_nullable
              as String,
      isSport: null == isSport
          ? _value.isSport
          : isSport // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpreuveImpl implements _Epreuve {
  const _$EpreuveImpl(
      {required this.id,
      required this.libelle,
      required this.site,
      required this.premier,
      required this.deuxieme,
      required this.troisieme,
      required this.isSport,
      required this.date});

  factory _$EpreuveImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpreuveImplFromJson(json);

  @override
  final String id;
  @override
  final String libelle;
  @override
  final String site;
  @override
  final String premier;
  @override
  final String deuxieme;
  @override
  final String troisieme;
  @override
  final String isSport;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'Epreuve(id: $id, libelle: $libelle, site: $site, premier: $premier, deuxieme: $deuxieme, troisieme: $troisieme, isSport: $isSport, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpreuveImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.libelle, libelle) || other.libelle == libelle) &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.premier, premier) || other.premier == premier) &&
            (identical(other.deuxieme, deuxieme) ||
                other.deuxieme == deuxieme) &&
            (identical(other.troisieme, troisieme) ||
                other.troisieme == troisieme) &&
            (identical(other.isSport, isSport) || other.isSport == isSport) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, libelle, site, premier,
      deuxieme, troisieme, isSport, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpreuveImplCopyWith<_$EpreuveImpl> get copyWith =>
      __$$EpreuveImplCopyWithImpl<_$EpreuveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpreuveImplToJson(
      this,
    );
  }
}

abstract class _Epreuve implements Epreuve {
  const factory _Epreuve(
      {required final String id,
      required final String libelle,
      required final String site,
      required final String premier,
      required final String deuxieme,
      required final String troisieme,
      required final String isSport,
      required final DateTime date}) = _$EpreuveImpl;

  factory _Epreuve.fromJson(Map<String, dynamic> json) = _$EpreuveImpl.fromJson;

  @override
  String get id;
  @override
  String get libelle;
  @override
  String get site;
  @override
  String get premier;
  @override
  String get deuxieme;
  @override
  String get troisieme;
  @override
  String get isSport;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$EpreuveImplCopyWith<_$EpreuveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
