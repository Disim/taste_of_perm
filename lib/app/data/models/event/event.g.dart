// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      notice: json['notice'] as String,
      link: json['link'] as String,
      source: json['source'] as String,
      visited: json['visited'] as bool? ?? false,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'description': instance.description,
      'notice': instance.notice,
      'link': instance.link,
      'source': instance.source,
      'visited': instance.visited,
      'image': instance.image,
    };
