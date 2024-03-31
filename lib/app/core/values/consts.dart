// ignore_for_file: constant_identifier_names

abstract class Constants {
  static const SERVER_URL = 'https://bab4-92-255-136-230.ngrok-free.app/';
  static const API_VERSION = 'api/';
  static const BASE_URL = '$SERVER_URL$API_VERSION';
}

enum HttpMethod {
  GET,
  POST,
  DELETE,
  PUT,
  PATCH,
}
