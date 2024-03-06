import 'package:freezed_annotation/freezed_annotation.dart';

part 'pays_match.freezed.dart';
part 'pays_match.g.dart';

@freezed
class PaysMatch with _$PaysMatch {
  const factory PaysMatch({
    required final String idEpreuvePays,
    required final String idPays,
    required final String libelle,
  }) = _PaysMatch;

  factory PaysMatch.fromJson(Map<String, dynamic> json) =>
      _$PaysMatchFromJson(json);
}
