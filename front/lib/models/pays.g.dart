// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pays.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaysImpl _$$PaysImplFromJson(Map<String, dynamic> json) => _$PaysImpl(
      id: json['id'] as int,
      libelle: json['libelle'] as String,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$$PaysImplToJson(_$PaysImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'libelle': instance.libelle,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
