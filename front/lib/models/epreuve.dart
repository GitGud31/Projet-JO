import 'package:freezed_annotation/freezed_annotation.dart';

part 'epreuve.freezed.dart';
part 'epreuve.g.dart';

@freezed
class Epreuve with _$Epreuve {
  const factory Epreuve({
    final int? id,
    required final String libelle,
    required final String lieu,
    final int? idPremier,
    final int? idDeuxieme,
    final int? idTroisieme,
    required final dynamic date,
    required final int sportId,
    final dynamic createdAt,
    final dynamic updatedAt,
  }) = _Epreuve;

  factory Epreuve.fromJson(Map<String, dynamic> json) =>
      _$EpreuveFromJson(json);
}
