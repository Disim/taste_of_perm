import 'package:freezed_annotation/freezed_annotation.dart';

part 'aggregator.freezed.dart';
part 'aggregator.g.dart';

@freezed
class Aggregator with _$Aggregator {
  factory Aggregator({
    required String name,
    required String url,
    required String image,
  }) = Aaggregator;

  factory Aggregator.fromJson(Map<String, dynamic> json) =>
      _$AggregatorFromJson(json);
}
