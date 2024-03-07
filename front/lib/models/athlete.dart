import 'package:freezed_annotation/freezed_annotation.dart';

part 'athlete.freezed.dart';
part 'athlete.g.dart';
 
@freezed
class Athlete with _$Athlete {
  const factory Athlete({
    required final String id,
    required final String nom,
    required final String prenom,
    required final String idPays,
  }) = _Athlete;

  factory Athlete.fromJson(Map<String, dynamic> json) =>
      _$AthleteFromJson(json);
}
