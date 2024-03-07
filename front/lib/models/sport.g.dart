// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SportImpl _$$SportImplFromJson(Map<String, dynamic> json) => _$SportImpl(
      id: json['id'] as int?,
      libelle: json['libelle'] as String,
      createdAt: json['createdAt'],
      updateAt: json['updateAt'],
    );

Map<String, dynamic> _$$SportImplToJson(_$SportImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'libelle': instance.libelle,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
    };
