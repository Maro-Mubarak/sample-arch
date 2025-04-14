import 'package:dio/dio.dart';

class AppIntercepter extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);

    options.headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
    };

  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    // debugPrint(
    //     'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    return handler.next(err);
  }
}
