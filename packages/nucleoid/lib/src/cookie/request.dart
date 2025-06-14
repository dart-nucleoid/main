import 'package:shelf/shelf.dart';
import 'package:shelf_secure_cookie/shelf_secure_cookie.dart' show CookieParser;

class CookieRequest {
  final Request? request;
  final CookieParser _cookies;

  CookieRequest([this.request])
    : _cookies = request != null
          ? CookieParser.fromHeader(request.headers)
          : CookieParser.fromCookieValue('');

  String? get(String name) {
    return _cookies.get(name)?.value;
  }

  void set(
    String name,
    String value, {
    String? domain,
    String? path,
    DateTime? expires,
    int? maxAge,
    bool? secure,
    bool? httpOnly,
  }) => _cookies.set(
    name,
    value,
    domain: domain,
    path: path,
    expires: expires,
    maxAge: maxAge,
    secure: secure,
    httpOnly: httpOnly,
  );

  void remove(String name) {
    _cookies.remove(name);
  }

  String toHeader() => _cookies.toString();

  void clear() => _cookies.clear();
}
