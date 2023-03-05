import 'package:freezed_annotation/freezed_annotation.dart';

class ForceLocalDateTimeConverter extends ForceUtcDateTimeConverter {
  const ForceLocalDateTimeConverter();
  @override
  String? toJson(DateTime? json) => json?.toUtc().toIso8601String();
}

class ForceUtcDateTimeConverter implements JsonConverter<DateTime?, String?> {
  const ForceUtcDateTimeConverter();

  @override
  DateTime? fromJson(String? json) => json == null
      ? null
      : DateTime.parse('$json${json.endsWith('Z') ? '' : 'Z'}').toLocal();

  @override
  String? toJson(DateTime? json) => json?.toIso8601String();
}
