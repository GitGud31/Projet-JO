import 'package:freezed_annotation/freezed_annotation.dart';

part 'pays_epreuve.freezed.dart';
part 'pays_epreuve.g.dart';

@freezed
class PaysEpreuve with _$PaysEpreuve {
  const factory PaysEpreuve({
    required final int idEpreuvePays,
    required final int idPays,
    required final int libelle,
    required final dynamic createdAt,
    required final dynamic updatedAt,
  }) = _PaysEpreuve;

  factory PaysEpreuve.fromJson(Map<String, dynamic> json) =>
      _$PaysEpreuveFromJson(json);
}
