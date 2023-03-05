class Constants {
  Constants._();
}

class RegexCommon {
  RegexCommon._();

  static const emailRegex =
      r'^([A-Za-z0-9]+[\-\_\.])*[A-Za-z0-9]+@([A-Za-z0-9]+\-)*[A-Za-z0-9]+\.[a-zA-Z]{2,4}$';
  static const phoneRegex = r'^(0)(2)(\d{9})$';
  static const mobileRegex = r'^(0)(3|5|7|8|9)(\d{8})$';
  static const fullNameRegex =
      r'^[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚÝàáâãèéêìíòóôõùúýĂăĐđĨĩŨũƠơƯưẠ-ỹ\s]{0,30}$';
}

class ErrorCodeNetwork {
  static const String netError = 'network_error';
  static const String parseError = 'parse_error';
  static const String socketError = 'socket_error';
  static const String httpError = 'http_error';
  static const String connectTimeoutError = 'connect_timeout';
  static const String sendTimeoutError = 'sent_timeout';
  static const String receiveTimeoutError = 'receive_timeout';
  static const String cancelError = 'cancel_error';
  static const String unknownError = 'unknown_error';
}
