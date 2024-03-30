// ignore_for_file: constant_identifier_names

abstract class Constants {
  static const SERVER_URL = 'https://www.logomed-platform.ru/';
  static const API_VERSION = 'api/';

  static const BASE_URL = '$SERVER_URL$API_VERSION';
  static const IMAGES_PATH = 'images/';
}

abstract class AppointmentStatus {
  static const toDo = 'к выполнению';
  static const onVerification = 'на проверке';
  static const done = 'проверен';
  static const notAssigned = 'не назначено';
}

abstract class AppointmentFrequency {
  static const onceADay = 'Один раз в день';
  static const twiceADay = 'Один раз в день';
}

abstract class HttpHeaders {
  static const AccessToken = 'Authorization';
  static const RefreshToken = 'refresh';
}

enum HttpMethod {
  GET,
  POST,
  DELETE,
  PUT,
  PATCH,
}

enum DataStatus {
  init,
  loading,
  success,
  error,
}

enum StateStatus {
  waiting,
  started,
  finished,
}

enum PlayerStatus {
  playing,
  pausing,
}
