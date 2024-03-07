import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin.freezed.dart';
part 'admin.g.dart';

@freezed
class Admin with _$Admin {
  const factory Admin({
    required final int id,
    required final String username,
    required final String password,
    required final dynamic createdAt,
    required final dynamic updatedAt,
  }) = _Admin;

  factory Admin.fromJson(Map<String, dynamic> json) => _$AdminFromJson(json);
}
