import 'package:freezed_annotation/freezed_annotation.dart';

part 'athlete_match.freezed.dart';
part 'athlete_match.g.dart';

@freezed
class AthleteMatch with _$AthleteMatch {
  const factory AthleteMatch({
    required final String idEpreuveAthlete,
    required final String idAthlete,
  }) = _AthleteMatch;

  factory AthleteMatch.fromJson(Map<String, dynamic> json) =>
      _$AthleteMatchFromJson(json);
}
