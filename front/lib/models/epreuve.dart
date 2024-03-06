import 'package:freezed_annotation/freezed_annotation.dart';

part 'epreuve.freezed.dart';
part 'epreuve.g.dart';

@freezed
class Epreuve with _$Epreuve {
  const factory Epreuve({
    required final String id,
    required final String libelle,
    required final String site,
    required final String premiere,
    required final String deuxieme,
    required final String troisieme,
    required final String isSport,
  }) = _Epreuve;

  factory Epreuve.fromJson(Map<String, dynamic> json) =>
      _$EpreuveFromJson(json);
}
