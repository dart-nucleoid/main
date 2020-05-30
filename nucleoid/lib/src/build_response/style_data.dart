import '../../nucleoid.dart';
import '../html/node_element.dart';

/// Example usage [StyleData] :
/// ```
/// class MyStyle extends StyleData {
///   MyStyle(Request request) : super(request: request);
///
///   @override
///   final List<StyleElement> styles = [_allin, _body, _h1, block, marginAuto, logo, center];
/// }
/// ```

abstract class StyleData extends BuildResponse {
  final Map<String, String> headers;
  final List<StyleElement> styles = [];
  final int maxAge;

  StyleData({Request request, this.headers, this.maxAge}) : super(request: request);

  @override
  Response builder() {
    /// You must override StyleData() constructor with request
    assert(request != null);

    if (request.headers.containsKey('If-Modified-Since') &&
        request.headers['If-Modified-Since'] == formatHttpDate(dateTimeStart)) {
      return Response.notModified(headers: headers);
    }

    return Response.ok(echoAllStyleClass(styles), headers: {
      'Content-Type': 'text/css',
      'Last-Modified': formatHttpDate(dateTimeStart),
//      'Cache-Control': 'max-age=${maxAge ?? 86400}, public',
      ...?headers
    });
  }
}
