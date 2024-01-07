import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:newsfeed_test/data/datasources/service.dart';
import 'package:newsfeed_test/data/failure.dart';
import 'package:newsfeed_test/data/models/news_article/news_article.dart';
import 'package:newsfeed_test/data/models/response/response_wrapper.dart';
import 'package:newsfeed_test/domain/repositories/news_feed_repository_interface.dart';

class NewsFeedRepository implements NewsFeedRepositoryInterface {
  late RestClient restClient;

  NewsFeedRepository({required this.restClient});

  @override
  Future<Either<Failure, ResponseWrapper<List<NewsArticle>?>>> getNewsArticles({
    String? page,
    String? country,
    String? language,
  }) async {
    try {
      final result = await restClient.getNewsArticles(
        country,
        language,
        page,
      );

      return Right(result);
    } on SocketException {
      return const Left(ConnectionFailure("Failed to connect to network"));
    } on DioException {
      return const Left(ServerFailure("Server error"));
    }
  }
}
