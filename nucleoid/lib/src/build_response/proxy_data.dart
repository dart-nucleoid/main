import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:path/path.dart' as p;
import 'package:pedantic/pedantic.dart';
import 'package:shelf/shelf.dart';

import '../../nucleoid.dart';

/// Based on proxyHandler(): shelf_proxy package

class ProxyData extends BuildResponse {
  final Uri uri;
  final String proxyName;
  final http.Client client;
  final String relativePathFrom;

  ProxyData({@required Request request, @required url, this.proxyName = 'nucleoid_shelf_proxy', this.relativePathFrom, http.Client client})
      : client = client ?? http.Client(),
        uri = url is String ? Uri.parse(url) : url,
        super(request: request);

  @override
  FutureOr<Response> build() async {
    var request = super.request;

    if (relativePathFrom != null && relativePathFrom.isNotEmpty) {
      request = request.change(path: relativePathFrom);
    }

    var requestUrl = uri.resolve(request.url.toString());
    var clientRequest = http.StreamedRequest(request.method, requestUrl);
    clientRequest.followRedirects = false;
    clientRequest.headers.addAll(request.headers);
    clientRequest.headers['Host'] = uri.authority;

    // Add a Via header. See
    // http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.45
    _addHeader(clientRequest.headers, 'via', '${request.protocolVersion} $proxyName');

    unawaited(store(request.read(), clientRequest.sink, closeSink: true));
    var clientResponse = await client.send(clientRequest);
    // Add a Via header. See
    // http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.45
    _addHeader(clientResponse.headers, 'via', '1.1 $proxyName');

    // Remove the transfer-encoding since the body has already been decoded by
    // [client].
    clientResponse.headers.remove('transfer-encoding');

    // If the original response was gzipped, it will be decoded by [client]
    // and we'll have no way of knowing its actual content-length.
    if (clientResponse.headers['content-encoding'] == 'gzip') {
      clientResponse.headers.remove('content-encoding');
      clientResponse.headers.remove('content-length');

      // Add a Warning header. See
      // http://www.w3.org/Protocols/rfc2616/rfc2616-sec13.html#sec13.5.2
      _addHeader(clientResponse.headers, 'warning', '214 $proxyName "GZIP decoded"');
    }

    // Make sure the Location header is pointing to the proxy server rather
    // than the destination server, if possible.
    if (clientResponse.isRedirect && clientResponse.headers.containsKey('location')) {
      var location = requestUrl.resolve(clientResponse.headers['location']).toString();
      if (p.url.isWithin(uri.toString(), location)) {
        clientResponse.headers['location'] = '/' + p.url.relative(location, from: uri.toString());
      } else {
        clientResponse.headers['location'] = location;
      }
    }

    return Response(clientResponse.statusCode, body: clientResponse.stream, headers: clientResponse.headers);
  }

  void _addHeader(Map<String, String> headers, String name, String value) {
    if (headers.containsKey(name)) {
      headers[name] += ', $value';
    } else {
      headers[name] = value;
    }
  }
}

Future store(Stream stream, EventSink sink, {bool cancelOnError = true, bool closeSink = true}) {
  var completer = Completer();
  stream.listen(sink.add, onError: (e, StackTrace stackTrace) {
    sink.addError(e, stackTrace);
    if (cancelOnError) {
      completer.complete();
      if (closeSink) sink.close();
    }
  }, onDone: () {
    if (closeSink) sink.close();
    completer.complete();
  }, cancelOnError: cancelOnError);
  return completer.future;
}
