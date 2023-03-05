
import '../../utilities/network/network_uti/error_handler.dart';

class BusinessResult<T> {
  T? data;
  String? errorMessage;
  String? errorCode;
  int? statusCode;
  bool get isSuccess => (statusCode != null &&
      statusCode! >= ExceptionHandle.success &&
      statusCode! < ExceptionHandle.multipleChoice);
  bool get isDataNotNull => data != null;
}
