import 'dart:io' show Cookie;

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:dio_flutter_transformer/dio_flutter_transformer.dart';
import 'package:flutter_ty_mobile/core/error/exceptions.dart';
import 'package:flutter_ty_mobile/core/internal/global.dart';
import 'package:flutter_ty_mobile/core/network/interceptors/dio_logger_interceptor.dart';
import 'package:flutter_ty_mobile/mylogger.dart';

class DioApiService {
  static DioApiService _instance;
  static CookieJar _cookieJar;

  Dio _dio;
  BaseOptions _options;
  CancelToken _downloadToken = new CancelToken();
  static const TAG = 'DioApiService';

  static DioApiService getInstance() {
    if (_instance == null) _instance = new DioApiService();
    return _instance;
  }

  static List<Cookie> loadCookies(Uri uri) => _cookieJar.loadForRequest(uri);

  DioApiService() {
    _options = createOptions(Global.CURRENT_SERVICE);
    _dio = new Dio(_options);
    _dio.transformer = FlutterTransformer(); // replace dio default transformer
    _dio.interceptors.add(DioLoggerInterceptor());
//    dio.interceptors.add(createDebugInterceptor());

    _cookieJar = CookieJar();
    _dio.interceptors.add(CookieManager(_cookieJar));
  }

  BaseOptions createOptions(String serviceUrl) {
    return new BaseOptions(
      // 請求基地址,可以包含子路徑
      baseUrl: serviceUrl,
      headers: {
        'Cache-Control': 'no-cache',
        'content-type': 'application/json, text/plain, */*',
      },
      // 連線伺服器超時時間，單位是毫秒.
      connectTimeout: 10000,
      // 響應流上前後兩次接受到數據的間隔，單位為毫秒。
      receiveTimeout: 5000,
      // 表示期望以那種格式(方式)接受響應數據。接受4種類型 `json`, `stream`, `plain`, `bytes`. 預設值是 `json`,
      responseType: ResponseType.plain,
    );
  }

  InterceptorsWrapper createDebugInterceptor() {
    return InterceptorsWrapper(onRequest: (RequestOptions options) {
      print("請求之前");
      // Do something before request is sent
      return options; //continue
    }, onResponse: (Response response) {
      print("響應之前");
      // Do something with response data
      return response; // continue
    }, onError: (DioError e) {
      print("錯誤之前");
      // Do something with response error
      return e; //continue
    });
  }

  /// GET請求
  /// [url]：請求地址
  /// [data]：請求參數
  /// [options]：請求配置
  /// [cancelToken]：取消標識
  Future<Response<dynamic>> get(url,
      {data, options, cancelToken, String userToken, Map<String, dynamic> headers}) async {
    try {
      if (userToken != null)
        return await _dio.get(url,
            queryParameters: data,
            options: Options(headers: {
              'JWT-TOKEN': userToken,
            }),
            cancelToken: cancelToken);
      else if (headers != null)
        return await _dio.get(url,
            queryParameters: data,
            options: Options(headers: headers),
            cancelToken: cancelToken);
      else
        return await _dio.get(url,
            queryParameters: data, options: options, cancelToken: cancelToken);
    } on DioError catch (e) {
      throw getErrorType(e);
    }
  }

  /// POST請求
  /// [url]：請求地址
  /// [data]：請求參數
  /// [options]：請求配置
  /// [cancelToken]：取消標識
  Future<Response<dynamic>> post(url,
      {data, options, cancelToken, String userToken}) async {
    try {
      if (userToken != null)
        return await _dio.post(url,
            queryParameters: data,
            options: Options(headers: {
              'JWT-TOKEN': userToken,
            }),
            cancelToken: cancelToken);
      else
        return await _dio.post(url,
            queryParameters: data, options: options, cancelToken: cancelToken);
    } on DioError catch (e) {
      throw getErrorType(e);
    }
  }

  /// FORM請求
  /// [formMap]：表單資料
  Future<Response<dynamic>> postForm(url, Map<dynamic, dynamic> formMap) async {
    FormData formData = new FormData.fromMap(formMap);
    try {
      return await _dio.post(url, data: formData);
    } on DioError catch (e) {
      throw getErrorType(e);
    }
  }

  void cancelRequests(CancelToken token) {
    try {
      token.cancel("cancelled");
    } on DioError catch (e) {
      throw getErrorType(e);
    }
  }

  /// DOWNLOAD請求
  /// [urlPath]：下載地址
  /// [savePath]：下載目的地
  /// [progressCallback]：下載進度通知
  Future<Response<dynamic>> downloadFile(
      String urlPath, savePath, ProgressCallback progressCallback) async {
    try {
      return await _dio.download(
        urlPath,
        savePath,
        onReceiveProgress: progressCallback,
        cancelToken: _downloadToken,
      );
    } on DioError catch (e) {
      throw getErrorType(e);
    }
  }

  void cancelDownloads() {
    cancelRequests(_downloadToken);
  }

  ServerException getErrorType(DioError e) {
    MyLogger.error(msg: 'request error', tag: TAG, error: e);
    switch (e.type) {
      case DioErrorType.CONNECT_TIMEOUT:
      case DioErrorType.SEND_TIMEOUT:
      case DioErrorType.RECEIVE_TIMEOUT:
        return RequestTimeoutException(e.type.toString());
      case DioErrorType.RESPONSE:
        return ResponseException();
      case DioErrorType.CANCEL:
        return RequestCanceledException();
      case DioErrorType.DEFAULT:
      default:
        return UnknownException();
    }
  }
}
