import 'package:json_annotation/json_annotation.dart';

part 'news_feed_model.g.dart';

@JsonSerializable()
class NewsFeed {
  String? status;
  int? totalResults;
  List<News>? articles;

  NewsFeed({this.status, this.totalResults, this.articles});

  factory NewsFeed.fromJson(Map<String, dynamic> json) =>
      _$NewsFeedFromJson(json);

  Map<String, dynamic> toJSon() => _$NewsFeedToJson(this);
}

@JsonSerializable()
class News {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  News(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

       factory News.fromJson(Map<String, dynamic> json) =>
      _$NewsFromJson(json);

  Map<String, dynamic> toJSon() => _$NewsToJson(this);
}

@JsonSerializable()
class Source {
  String? id;
  String? name;

  Source({this.id, this.name});

   factory Source.fromJson(Map<String, dynamic> json) =>
      _$SourceFromJson(json);

  Map<String, dynamic> toJSon() => _$SourceToJson(this);
}
