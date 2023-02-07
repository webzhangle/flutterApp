import 'package:dio/dio.dart';

/// 拦截器发送访问令牌
class ErrorInterceptor extends Interceptor {
  ErrorInterceptor();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // // 创建一个终端列表，这些你不需要token
    // final listOfPaths = <String>[
    //   '/send-top',
    //   '/validate-otp'
    // ];
    // // 检查如果请求端点匹配
    // if (listOfPaths.contains(options.path.toString())) {
    //   // 如果端点匹配然后跳到追加令牌
    //   return handler.next(options);
    // }
    // // 在这里加载令牌到 header
    // var token = '';
    // options.headers.addAll({'Authorization': token});
    return handler.next(options);
  }

  // 你也可以在响应或错误时执行一些动作
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // print(err.response?.statusCode); // 可以获取请求时候的code 值 401 403.。。
    // print(err);
    return handler.next(err);
  }
}
