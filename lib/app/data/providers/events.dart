import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:taste_of_perm/app/data/models/event/event.dart';

class EventsApiClient {
  final Dio httpClient;
  EventsApiClient({required this.httpClient});

  Future<List<Event>> getEvents([String? source]) async {
    final path =
        source == null ? 'events?limit=0' : 'events?limit=0&source=$source';
    try {
      final response = await httpClient.get(path);
      if (response.statusCode! < 300) {
        final List jsonResponse = response.data;
        return jsonResponse.map((obj) => Event.fromJson(obj)).toList();
      } else {
        print('Error -getAll');
      }
    } catch (_) {
      print(_);
    }
    return [];
  }
}
