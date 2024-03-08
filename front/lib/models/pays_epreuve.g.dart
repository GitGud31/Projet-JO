// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pays_epreuve.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaysEpreuveImpl _$$PaysEpreuveImplFromJson(Map<String, dynamic> json) =>
    _$PaysEpreuveImpl(
      idEpreuvePays: json['idEpreuvePays'] as int,
      idPays: json['idPays'] as int,
      libelle: json['libelle'] as int,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$$PaysEpreuveImplToJson(_$PaysEpreuveImpl instance) =>
    <String, dynamic>{
      'idEpreuvePays': instance.idEpreuvePays,
      'idPays': instance.idPays,
      'libelle': instance.libelle,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
