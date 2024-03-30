import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:taste_of_perm/app/data/models/event/event.dart';

class EventsApiClient {
  final Dio httpClient;
  EventsApiClient({required this.httpClient});

  Future<List<Event>> getAll() async {
    try {
      var response = await httpClient.get('events/');
      if (response.statusCode! < 300) {
        Map<String, dynamic> jsonResponse = json.decode(response.data);
        return jsonResponse['data'].map((obj) => Event.fromJson(obj)).toList();
      } else {
        print('Error -getAll');
      }
    } catch (_) {}
    return [];
  }
}
