// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      notice: json['notice'] as String,
      source: json['source'] as String,
      image: json['image'] as String,
      link: json['link'] as String,
      category: json['category'] as String,
      description: json['description'] as String? ?? '',
      visited: json['visited'] as bool? ?? false,
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'notice': instance.notice,
      'source': instance.source,
      'image': instance.image,
      'link': instance.link,
      'category': instance.category,
      'description': instance.description,
      'visited': instance.visited,
    };
