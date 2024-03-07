import 'package:freezed_annotation/freezed_annotation.dart';

part 'athlete_epreuve.freezed.dart';
part 'athlete_epreuve.g.dart';

@freezed
class AthleteEpreuve with _$AthleteEpreuve {
  const factory AthleteEpreuve({
    final int? idEpreuve,
    final int? idAthlete,
    final dynamic createdAt,
    final dynamic updatedAt,
  }) = _AthleteEpreuve;

  factory AthleteEpreuve.fromJson(Map<String, dynamic> json) =>
      _$AthleteEpreuveFromJson(json);
}
