import 'package:dawid_wnukowski_2023/data/app_consts.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

class DioClient {
  DioClient(
    this.ref,
  ) {
    _dio = Dio(
      BaseOptions(
        baseUrl: AppConsts.baseUrl,
      ),
    );
    _dio.interceptors.add(TalkerDioLogger());
  }

  final Ref ref;

  late final Dio _dio;

  Dio get dio => _dio;

  Future<Object> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? additionalHeaders,
  }) async {
    await _setHeaders(
      additionalHeaders: additionalHeaders,
    );
    return _dio.get<Object>(
      path,
      data: data,
      queryParameters: queryParameters,
    );
  }

  Future<Object> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? additionalHeaders,
    RequestOptions? options,
  }) async {
    await _setHeaders(additionalHeaders: additionalHeaders);
    return _dio.post<Object>(
      path,
      data: data,
      options: Options(
        contentType: options?.contentType,
      ),
    );
  }

  Future<Object> put(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? additionalHeaders,
  }) async {
    await _setHeaders(additionalHeaders: additionalHeaders);
    return _dio.put<Object>(path, data: data);
  }

  Future<Object> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? additionalHeaders,
  }) async {
    await _setHeaders(additionalHeaders: additionalHeaders);
    return _dio.delete<Object>(path, data: data);
  }

  void addInterceptor(Interceptor interceptor) {
    _dio.interceptors.add(interceptor);
  }

  Future<void> _setHeaders({
    required Map<String, dynamic>? additionalHeaders,
  }) async {
    if (additionalHeaders != null) {
      _dio.options.headers.addAll(additionalHeaders);
    }
  }
}

final dioClientProvider = Provider(DioClient.new);
