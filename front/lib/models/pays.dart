import 'package:freezed_annotation/freezed_annotation.dart';

part 'pays.freezed.dart';
part 'pays.g.dart';

@freezed
class Pays with _$Pays {
  const factory Pays({
    required final int id,
    required final String libelle,
    required final dynamic createdAt,
    required final dynamic updatedAt,
  }) = _Pays;

  factory Pays.fromJson(Map<String, dynamic> json) => _$PaysFromJson(json);
}
