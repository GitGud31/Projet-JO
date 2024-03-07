import 'package:freezed_annotation/freezed_annotation.dart';

part 'athlete.freezed.dart';
part 'athlete.g.dart';

@freezed
class Athlete with _$Athlete {
  const factory Athlete({
    required final int id,
    required final String nom,
    required final String prenom,
    required final int pays_id,
    required final dynamic createdAt,
    required final dynamic updatedAt,
  }) = _Athlete;

  factory Athlete.fromJson(Map<String, dynamic> json) =>
      _$AthleteFromJson(json);
}
