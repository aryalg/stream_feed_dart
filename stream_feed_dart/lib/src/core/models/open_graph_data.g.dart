// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_graph_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenGraphData _$OpenGraphDataFromJson(Map json) {
  return OpenGraphData(
    title: json['title'] as String?,
    type: json['type'] as String?,
    url: json['url'] as String?,
    site: json['site'] as String?,
    siteName: json['site_name'] as String?,
    description: json['description'] as String?,
    determiner: json['determiner'] as String?,
    locale: json['locale'] as String?,
    images: (json['images'] as List<dynamic>?)
        ?.map((e) => Image.fromJson((e as Map?)?.map(
              (k, e) => MapEntry(k as String, e),
            )))
        .toList(),
    videos: (json['videos'] as List<dynamic>?)
        ?.map((e) => Video.fromJson((e as Map?)?.map(
              (k, e) => MapEntry(k as String, e),
            )))
        .toList(),
    audios: (json['audios'] as List<dynamic>?)
        ?.map((e) => Audio.fromJson((e as Map?)?.map(
              (k, e) => MapEntry(k as String, e),
            )))
        .toList(),
  );
}

Image _$ImageFromJson(Map json) {
  return Image(
    image: json['image'] as String?,
    url: json['url'] as String?,
    secureUrl: json['secure_url'] as String?,
    width: json['width'] as String?,
    height: json['height'] as String?,
    type: json['type'] as String?,
    alt: json['alt'] as String?,
  );
}

Video _$VideoFromJson(Map json) {
  return Video(
    image: json['image'] as String?,
    url: json['url'] as String?,
    secureUrl: json['secure_url'] as String?,
    width: json['width'] as String?,
    height: json['height'] as String?,
    type: json['type'] as String?,
    alt: json['alt'] as String?,
  );
}

Audio _$AudioFromJson(Map json) {
  return Audio(
    audio: json['audio'] as String?,
    url: json['url'] as String?,
    secureUrl: json['secure_url'] as String?,
    type: json['type'] as String?,
  );
}
