import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  factory Event({
    required String uuid,
    required String title,
    required String description,
    required String notice,
    required String link,
    required String source,
    @Default(false) bool visited,
    String? image,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
