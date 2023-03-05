import 'package:basic_utils/basic_utils.dart';

import '../../models/business/business_result.dart';
import '../constants.dart';
import '../logger.dart';
import 'network_uti/data_result.dart';
import 'network_uti/error_handler.dart';


class HttpErrorCodeUtility {
  static const String lostInternetCode = '1000';
  static const String httpExceptionCode = '1111';

  static const int _lostInternet = 1000;
  static const int _parseError = 1001;
  static const int _socketError = 1002;
  static const int _httpError = 1003;
  static const int _connectTimeoutError = 1004;
  static const int _sendTimeoutError = 1005;
  static const int _receiveTimeoutError = 1006;
  static const int _cancelError = 1007;
  static const int _unknownError = 9999;

  static String verifyDataResultStatusCode<T>(DataResult<T> response) {
    try {
      final statusCode = (response.error as ApiFailure).statusCode;
      switch (statusCode) {
        case _lostInternet:
          return lostInternetCode;
        case _parseError:
        case _socketError:
        case _httpError:
        case _connectTimeoutError:
        case _sendTimeoutError:
        case _receiveTimeoutError:
        case _cancelError:
        case _unknownError:
          return httpExceptionCode;
      }
      return response.error?.errorCode ?? '';
    } catch (ex) {
      LoggerUtils.e(ex.toString());
    }
    return response.error?.errorCode ?? '';
  }

  static String verifyBusinessStatusCode<T>(BusinessResult<T> response) {
    try {
      final statusCode = response.statusCode;
      switch (statusCode) {
        case _lostInternet:
          return lostInternetCode;
        case _parseError:
        case _socketError:
        case _httpError:
        case _connectTimeoutError:
        case _sendTimeoutError:
        case _receiveTimeoutError:
        case _cancelError:
        case _unknownError:
          return httpExceptionCode;
      }
      return response.errorCode ?? '';
    } catch (ex) {
      LoggerUtils.e(ex.toString());
    }
    return response.errorCode ?? '';
  }

  static bool hasLostInternet(String? statusCodeStr) {
    if (StringUtils.isNotNullOrEmpty(statusCodeStr)) {
      return statusCodeStr!.compareTo(lostInternetCode) == 0;
    }
    return false;
  }

  static bool hasHttpException(String? statusCodeStr) {
    if (StringUtils.isNotNullOrEmpty(statusCodeStr)) {
      return statusCodeStr!.compareTo(httpExceptionCode) == 0;
    }
    return false;
  }

  static bool hasErrorCodeNetwork(String? errorCode) {
    return [
      ErrorCodeNetwork.netError,
      ErrorCodeNetwork.parseError,
      ErrorCodeNetwork.socketError,
      ErrorCodeNetwork.httpError,
      ErrorCodeNetwork.connectTimeoutError,
      ErrorCodeNetwork.sendTimeoutError,
      ErrorCodeNetwork.receiveTimeoutError,
      ErrorCodeNetwork.cancelError,
      ErrorCodeNetwork.unknownError,
    ].contains(errorCode);
  }

  static bool hasNotConnectionNetwork(String? statusCodeStr) {
    return hasLostInternet(statusCodeStr) ||
        hasHttpException(statusCodeStr) ||
        hasErrorCodeNetwork(statusCodeStr);
  }

  static String mapMessageFromErrorCode(String errorCode) {
    if (hasLostInternet(errorCode) || hasHttpException(errorCode)) {
      return 'exception_internet';
    }
    return errorCode;
  }

  static String handleErrorMessage(String? message) {
    if (StringUtils.isNullOrEmpty(message) ||
        message?.toLowerCase() == 'network_error' ||
        message?.toLowerCase() == 'network error') {
      return 'message_error';
    }
    return message!;
  }
}
