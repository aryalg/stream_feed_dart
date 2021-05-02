import 'package:stream_feed_dart/src/client/stream_client_options.dart';
import 'package:stream_feed_dart/src/core/api/files_api.dart';
import 'package:stream_feed_dart/src/core/api/images_api.dart';
import 'package:stream_feed_dart/src/core/api/images_api_impl.dart';
import 'package:stream_feed_dart/src/core/http/http_client.dart';
import 'package:stream_feed_dart/src/core/http/stream_http_client.dart';
import 'package:stream_feed_dart/src/core/http/token.dart';
import 'package:stream_feed_dart/src/core/models/open_graph_data.dart';
import 'package:stream_feed_dart/src/core/util/extension.dart';
import 'package:stream_feed_dart/src/core/util/routes.dart';

import 'batch_api.dart';
import 'batch_api_impl.dart';
import 'collections_api.dart';
import 'collections_api_impl.dart';
import 'feed_api.dart';
import 'feed_api_impl.dart';
import 'files_api_impl.dart';
import 'reactions_api.dart';
import 'reactions_api_impl.dart';
import 'stream_api.dart';
import 'users_api.dart';
import 'users_api_impl.dart';

class StreamApiImpl implements StreamApi {
  final HttpClient _client;

  StreamApiImpl(
    String apiKey, {
    StreamClientOptions? options,
    HttpClient? client,
  }) : _client = client ??
            StreamHttpClient(apiKey, options: options);

  @override
  BatchApi get batch => BatchApiImpl(_client);

  @override
  ReactionsApi get reactions => ReactionsApiImpl(_client);

  @override
  UsersApi get users => UsersApiImpl(_client);

  @override
  CollectionsApi get collections =>
      CollectionsApiImpl(_client);

  @override
  FeedApi get feed => FeedApiImpl(_client);

  @override
  FilesApi get files => FilesApiImpl(_client);

  @override
  ImagesApi get images => ImagesApiImpl(_client);

  @override
  Future<OpenGraphData> openGraph(
      Token token, String targetUrl) async {
    checkNotNull(targetUrl, "TargetUrl can't be null");
    checkArgument(
        targetUrl.isNotEmpty, "TargetUrl can't be empty");
    final result = await _client.get(
      Routes.openGraphUrl,
      headers: {'Authorization': '$token'},
      queryParameters: {'url': targetUrl},
    );
    print(result);
    return Future.value(null);
  }
}
