import 'package:cooky/cooky.dart' as cookie;

class CookieJS {
  static String get(String name) => cookie.get(name);

  static void set(
    String name,
    String value, {
    String domain,
    String path,
    DateTime expires,
    Duration maxAge,
    bool secure,
  }) =>
      cookie.set(name, value, expires: expires, maxAge: maxAge, path: path, domain: domain);

  static bool remove(String name, {String path, String domain, bool secure}) =>
      cookie.remove(name, path: path, domain: domain, secure: secure);
}
