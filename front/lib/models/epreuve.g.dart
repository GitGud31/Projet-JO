// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epreuve.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpreuveImpl _$$EpreuveImplFromJson(Map<String, dynamic> json) =>
    _$EpreuveImpl(
      id: json['id'] as String,
      libelle: json['libelle'] as String,
      site: json['site'] as String,
      premiere: json['premiere'] as String,
      deuxieme: json['deuxieme'] as String,
      troisieme: json['troisieme'] as String,
      isSport: json['isSport'] as String,
    );

Map<String, dynamic> _$$EpreuveImplToJson(_$EpreuveImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'libelle': instance.libelle,
      'site': instance.site,
      'premiere': instance.premiere,
      'deuxieme': instance.deuxieme,
      'troisieme': instance.troisieme,
      'isSport': instance.isSport,
    };
