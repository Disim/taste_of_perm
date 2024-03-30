import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;

import '../../core/values/consts.dart';

class ApiService extends GetxService {
  Dio httpClient = Dio(
    BaseOptions(
      baseUrl: Constants.BASE_URL,
      contentType: 'application/json; charset=UTF-8',
    ),
  );

  ApiService();

  Future<ApiService> init() async {
    httpClient.interceptors.add(InterceptorsWrapper(
      onError: (DioException e, ErrorInterceptorHandler handler) async {
        if (e.response != null) {
          return handler.resolve(e.response as Response);
        } else {
          return handler.reject(e);
        }
      },
    ));
    return this;
  }

  Future<Response> request(
    String path, {
    HttpMethod method = HttpMethod.GET,
    dynamic data,
  }) async {
    try {
      var response = await httpClient.request(
        path,
        data: data,
        options: Options(method: method.name),
      );
      return response;
    } catch (e) {
      e.printError();
      return Response(requestOptions: RequestOptions());
    }
  }
}
