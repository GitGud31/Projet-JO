// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'athlete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AthleteImpl _$$AthleteImplFromJson(Map<String, dynamic> json) =>
    _$AthleteImpl(
      id: json['id'] as int,
      nom: json['nom'] as String,
      prenom: json['prenom'] as String,
      pays_id: json['pays_id'] as int,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$$AthleteImplToJson(_$AthleteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nom': instance.nom,
      'prenom': instance.prenom,
      'pays_id': instance.pays_id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
