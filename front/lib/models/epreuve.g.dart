// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epreuve.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpreuveImpl _$$EpreuveImplFromJson(Map<String, dynamic> json) =>
    _$EpreuveImpl(
      id: json['id'] as int?,
      libelle: json['libelle'] as String,
      lieu: json['lieu'] as String,
      idPremier: json['idPremier'] as int?,
      idDeuxieme: json['idDeuxieme'] as int?,
      idTroisieme: json['idTroisieme'] as int?,
      date: json['date'],
      sportId: json['sportId'] as int,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$$EpreuveImplToJson(_$EpreuveImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'libelle': instance.libelle,
      'lieu': instance.lieu,
      'idPremier': instance.idPremier,
      'idDeuxieme': instance.idDeuxieme,
      'idTroisieme': instance.idTroisieme,
      'date': instance.date,
      'sportId': instance.sportId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
