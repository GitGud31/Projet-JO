// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'athlete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AthleteImpl _$$AthleteImplFromJson(Map<String, dynamic> json) =>
    _$AthleteImpl(
      id: json['id'] as String,
      nom: json['nom'] as String,
      prenom: json['prenom'] as String,
      idPays: json['idPays'] as String,
    );

Map<String, dynamic> _$$AthleteImplToJson(_$AthleteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nom': instance.nom,
      'prenom': instance.prenom,
      'idPays': instance.idPays,
    };
