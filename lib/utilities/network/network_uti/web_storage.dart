// ignore: avoid_web_libraries_in_flutter
import 'dart:convert';
import 'dart:html';


class WebStorage {
  static const String _csAccessTokenKey = 'csAccessToken';
  static const String _csRefreshTokenKey = 'csRefreshToken';

  WebStorage._internal();
  static final WebStorage instance = WebStorage._internal();

  String get accessToken => _getCookie(_csAccessTokenKey);
  set accessToken(String accessToken) =>
      _setCookie(_csAccessTokenKey, accessToken);

  String get refreshToken => _getCookie(_csRefreshTokenKey);
  set refreshToken(String refreshToken) =>
      _setCookie(_csRefreshTokenKey, refreshToken);

  String _getCookie(String key) {
    try {
      final cookie = document.cookie ?? '';
      final entity = cookie.split('; ').map((item) {
        var key = item.substring(0, item.indexOf('=')).trim();
        var value = item.substring(item.indexOf('=') + 1).trim();
        return MapEntry(key, value);
      });
      final cookies = Map.fromEntries(entity);
      return cookies[key] ?? '';
    } catch (e) {
      return '';
    }
  }

  void _setCookie(String key, String value) {
    document.cookie = '$key=$value; max-age=2592000; path=/;';
  }

  void cleanCookie() {
    const keyRefreshToken = 'refreshToken';
    const idToken = 'idToken';
    final keys = [
      _csAccessTokenKey,
      _csRefreshTokenKey,
      keyRefreshToken,
      idToken
    ];
    for (var key in keys) {
      if (_getCookie(key).isNotEmpty) _setCookie(key, '');
    }
  }

  String? getQueryParam(String paramKey) {
    var uri = Uri.dataFromString(window.location.href);
    Map<String, String> params = uri.queryParameters;
    return params[paramKey];
  }

  String _decodeBase64(String str) {
    String output = str.replaceAll('-', '+').replaceAll('_', '/');

    switch (output.length % 4) {
      case 0:
        break;
      case 2:
        output += '==';
        break;
      case 3:
        output += '=';
        break;
      default:
        throw Exception('Illegal base64url string!"');
    }

    return utf8.decode(base64Url.decode(output));
  }

  String getUserName() {
    final parts = accessToken.split('.');
    if (parts.length != 3) {
      throw Exception('invalid token');
    }

    final payload = _decodeBase64(parts[1]);
    final payloadMap = json.decode(payload);
    if (payloadMap is! Map<String, dynamic>) {
      throw Exception('invalid payload');
    }
    if (payloadMap.keys.first.contains('x-username')) {
      return payloadMap.values.first;
    }
    return '';
  }
}
