// ignore_for_file: invalid_annotation_target
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'news_article.freezed.dart';
part 'news_article.g.dart';

@freezed
class NewsArticle with _$NewsArticle {
  const factory NewsArticle({
    @JsonKey(name: "article_id") required String articleId,
    String? title,
    String? link,
    List<String>? keywords,
    List<String>? creator,
    @JsonKey(name: "video_url") String? videoUrl,
    String? description,
    String? content,
    DateTime? pubDate,
    @JsonKey(name: "image_url") String? imageUrl,
    @JsonKey(name: "source_id") String? sourceId,
    @JsonKey(name: "source_priority") int? sourcePriority,
    List<String>? country,
    List<String>? category,
    String? language,
  }) = _NewsArticle;

  factory NewsArticle.fromJson(Map<String, Object?> json) =>
      _$NewsArticleFromJson(json);
}
