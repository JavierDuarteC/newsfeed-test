import 'package:dartz/dartz.dart';
import 'package:newsfeed_test/data/failure.dart';
import 'package:newsfeed_test/data/models/news_article/news_article.dart';
import 'package:newsfeed_test/data/models/response/response_wrapper.dart';
import 'package:newsfeed_test/domain/repositories/news_feed_repository.dart';
import 'package:newsfeed_test/utils/constants.dart';

class NewsFeedUseCase {
  final NewsFeedRepository repository;

  NewsFeedUseCase({required this.repository});

  Future<Either<Failure, ResponseWrapper<List<NewsArticle>?>>> executeGetNewsArticles({
    String? page,
    String country = Constants.country,
    String language = Constants.language,
    String? category,
  }) {
    return repository.getNewsArticles(
      page: page,
      country: country,
      language: language,
      category: category,
    );
  }
}
