// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'athlete_epreuve.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AthleteEpreuveImpl _$$AthleteEpreuveImplFromJson(Map<String, dynamic> json) =>
    _$AthleteEpreuveImpl(
      idEpreuve: json['idEpreuve'] as int?,
      idAthlete: json['idAthlete'] as int?,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$$AthleteEpreuveImplToJson(
        _$AthleteEpreuveImpl instance) =>
    <String, dynamic>{
      'idEpreuve': instance.idEpreuve,
      'idAthlete': instance.idAthlete,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
