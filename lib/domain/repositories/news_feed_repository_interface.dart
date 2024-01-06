import 'package:dartz/dartz.dart';
import 'package:newsfeed_test/data/failure.dart';
import 'package:newsfeed_test/data/models/news_article/news_article.dart';

abstract class NewsFeedRepositoryInterface {
  Future<Either<Failure, List<NewsArticle>?>> getNewsArticles();
}