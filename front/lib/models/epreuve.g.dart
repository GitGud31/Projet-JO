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
      premier: json['premier'] as String,
      deuxieme: json['deuxieme'] as String,
      troisieme: json['troisieme'] as String,
      isSport: json['isSport'] as String,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$EpreuveImplToJson(_$EpreuveImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'libelle': instance.libelle,
      'site': instance.site,
      'premier': instance.premier,
      'deuxieme': instance.deuxieme,
      'troisieme': instance.troisieme,
      'isSport': instance.isSport,
      'date': instance.date.toIso8601String(),
    };
