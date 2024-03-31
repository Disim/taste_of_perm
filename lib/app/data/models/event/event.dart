import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  factory Event({
    required String id,
    required String title,
    required String notice,
    required String source,
    required String image,
    required String link,
    required String category,
    @Default('') String description,
    @Default(false) bool visited,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
