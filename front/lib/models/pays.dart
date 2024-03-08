import 'package:freezed_annotation/freezed_annotation.dart';

part 'pays.freezed.dart';
part 'pays.g.dart';

@freezed
class Pays with _$Pays {
  const factory Pays({
    final int? id,
    required final String libelle,
    final String? flag,
    final dynamic createdAt,
    final dynamic updatedAt,
  }) = _Pays;

  factory Pays.fromJson(Map<String, dynamic> json) => _$PaysFromJson(json);
}
