import 'dart:convert';

import 'package:basic_utils/basic_utils.dart';
import 'package:dio/dio.dart';

import '../../app_dependencies.dart';
import '../../routers/app_router.dart';
import '../app_configuration.dart';
import '../logger.dart';
import 'network_uti/error_handler.dart';
import 'network_uti/rest_utility.dart';
import 'network_uti/web_storage.dart';

class AuthInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final storage = WebStorage.instance;
    if (storage.accessToken.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer ${storage.accessToken}';
    }

    super.onRequest(options, handler);
  }
}

class TokenInterceptor extends QueuedInterceptor {
  final String _mainInstanceName;

  TokenInterceptor(this._mainInstanceName);

  Future<Map<String, dynamic>?> getToken() async {
    final Map<String, String> params = <String, String>{};
    final cfg = AppDependencies.injector.get<AppConfiguration>();
    final tokenDio =
        AppDependencies.injector.get<RestUtils>(instanceName: 'AUTHEN');
    params['refreshToken'] = WebStorage.instance.refreshToken;
    params['clientId'] = cfg.clientId;
    try {
      final Response response =
          await tokenDio.dio.post<dynamic>('/refreshToken', data: params);
      if (response.statusCode == ExceptionHandle.success) {
        return jsonDecode(response.data.toString()) as Map<String, dynamic>;
      } else if (response.statusCode == ExceptionHandle.unauthorized) {
        // final AuthGuard authenGuard = AppDependencies.injector.get<AuthGuard>();
        // await authenGuard.clearDataLocal();
        final AppRouter appRouter = AppDependencies.injector.get<AppRouter>();
        //Open login
        // await LoginUtils.requestLogin((isSuccess) async {
        //   if (!isSuccess) {
        //     // Push error page
        //     await appRouter.replaceAll([const UnAuthenRoute()]);
        //   }
        // });
      }
    } catch (e) {
      LoggerUtils.e('Error: ${e.toString()}');
    }
    return null;
  }

  @override
  Future<void> onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    //401
    if (response.statusCode == ExceptionHandle.unauthorized) {
      // LoggerUtils.d('-----------Request Token------------');
      final RestUtils restUtils = AppDependencies.injector
          .get<RestUtils>(instanceName: _mainInstanceName);
      final Map<String, dynamic>? token = await getToken();
      String accessTokenKey = 'access_token';
      String refreshTokenKey = 'refresh_token';
      final String? accessToken = token?[accessTokenKey];
      final String? refreshToken = token?[refreshTokenKey];
      // LoggerUtils.d(
      //     '-----------New AccessToken: $accessToken ------------New RefreshToken: $refreshToken');
      WebStorage.instance.accessToken = accessToken ?? '';
      WebStorage.instance.refreshToken = refreshToken ?? '';

      if (StringUtils.isNotNullOrEmpty(accessToken)) {
        final Dio dio = Dio();
        dio.options = restUtils.dio.options;
        final RequestOptions request = response.requestOptions;
        request.headers['Authorization'] = 'Bearer $accessToken';

        final Options options = Options(
          headers: request.headers,
          method: request.method,
        );

        try {
          // LoggerUtils.d('----------- Re-Request API ------------');
          final Response response = await dio.request<dynamic>(
            request.path,
            data: request.data,
            queryParameters: request.queryParameters,
            cancelToken: request.cancelToken,
            options: options,
            onReceiveProgress: request.onReceiveProgress,
          );
          return handler.next(response);
        } on DioError catch (e) {
          return handler.reject(e);
        }
      }
    }
    super.onResponse(response, handler);
  }
}

class AMSDefaultHeaderInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.remove('User-Agent');
    super.onRequest(options, handler);
  }
}


class LoggingInterceptor extends Interceptor {
  late DateTime _startTime;
  late DateTime _endTime;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _startTime = DateTime.now();
    LoggerUtils.d('----------Start----------');
    if (options.queryParameters.isEmpty) {
      LoggerUtils.d('RequestUrl: ${options.baseUrl}${options.path}');
    } else {
      LoggerUtils.d(
          'RequestUrl: ${options.baseUrl}${options.path}?${Transformer.urlEncodeMap(options.queryParameters)}');
    }
    LoggerUtils.d(
        'RequestMethod: ${options.method}::RequestHeaders:${options.headers}::RequestContentType: ${options.contentType}::RequestData: ${options.data.toString()}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _endTime = DateTime.now();
    final int duration = _endTime.difference(_startTime).inMilliseconds;
    if (response.statusCode == ExceptionHandle.success) {
      LoggerUtils.d('ResponseCode: ${response.statusCode}');
    } else {
      LoggerUtils.e('ResponseCode: ${response.statusCode}');
    }
    LoggerUtils.d('ResponseData: ${response.data.toString()}');
    LoggerUtils.d('----------End: $duration millisecond----------');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    LoggerUtils.e('Error: ${err.message}');
    super.onError(err, handler);
  }
}
