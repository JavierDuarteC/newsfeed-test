import 'package:dartz/dartz.dart';
import 'package:newsfeed_test/data/failure.dart';
import 'package:newsfeed_test/data/models/news_article/news_article.dart';
import 'package:newsfeed_test/data/models/response/response_wrapper.dart';

abstract class NewsFeedRepositoryInterface {
  Future<Either<Failure, ResponseWrapper<List<NewsArticle>?>>>
      getNewsArticles();
}
