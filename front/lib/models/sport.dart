import 'package:freezed_annotation/freezed_annotation.dart';

part 'sport.freezed.dart';
part 'sport.g.dart';

@freezed
class Sport with _$Sport {
  const factory Sport({
    required final String id,
    required final String libelle,
  }) = _Sport;

  factory Sport.fromJson(Map<String, dynamic> json) => _$SportFromJson(json);
}
