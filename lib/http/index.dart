/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-06 16:00:09
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-07 18:03:40
 */
import 'dart:convert';

import 'package:dio/dio.dart';
class MyHttp {
  // 基础配置项
  var options = BaseOptions(
    baseUrl: 'http://172.20.0.94:8094/api',
    connectTimeout: 5000,
    receiveTimeout: 3000,
    headers: {
      'Authorization': 'Bearer 80a35a099e2a48caa8d6e6fe56b9ad49'
    }
    
  );
  late Dio dio;
  MyHttp () {
    dio = Dio(options);
    dio.interceptors.add(InterceptorsWrapper(
      onRequest:(options, handler){
        // Do something before request is sent
        return handler.next(options); //continue
        // If you want to resolve the request with some custom data，
        // you can resolve a `Response` object eg: `handler.resolve(response)`.
        // If you want to reject the request with a error message,
        // you can reject a `DioError` object eg: `handler.reject(dioError)`
      },
      onResponse:(response,handler) {
        // Do something with response data
        return handler.next(response); // continue
        // If you want to reject the request with a error message,
        // you can reject a `DioError` object eg: `handler.reject(dioError)` 
      },
      onError: (DioError e, handler) {
        // Do something with response error
        return  handler.next(e);//continue
        // If you want to resolve the request with some custom data，
        // you can resolve a `Response` object eg: `handler.resolve(response)`.  
      }
  ));
  }
  Future request ({ required String method, required String url, Map<String, dynamic>? data }) {
    return dio.request(
      url,
      data: data,
      options: Options(method: method),
    );
  }
}