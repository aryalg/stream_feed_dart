import 'package:equatable/equatable.dart';

///
class FeedId extends Equatable {
  ///
  final String slug;

  ///
  final String userId;

  ///
  FeedId(this.slug, this.userId)
      : assert(!slug.contains(':'), 'Invalid slug'),
        assert(!userId.contains(':'), 'Invalid userId');

  ///
  factory FeedId.id(String id) {
    assert(id.contains(':'), 'Invalid FeedId');
    final parts = id.split(':');
    assert(parts.length == 2, 'Invalid FeedId');
    return FeedId(parts[0], parts[1]);
  }

  ///
  String get claim => '$slug$userId';

  ///
  static List<FeedId>? fromIds(List<dynamic>? ids) =>
      ids?.map((e) => FeedId.id(e)).toList(growable: false);

  ///
  static List<dynamic>? toIds(List<FeedId>? feeds) => feeds!
      .map((e) => e.toString())
      .toList(growable: false);

  @override
  List<Object> get props => [slug, userId];

  @override
  String toString() => '$slug:$userId';
}
