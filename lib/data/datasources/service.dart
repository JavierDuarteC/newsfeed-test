import 'package:newsfeed_test/data/models/news_article/news_article.dart';
import 'package:newsfeed_test/data/models/response/response_wrapper.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'service.g.dart';

@RestApi(baseUrl: "https://newsdata.io/api/1")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/news")
  Future<ResponseWrapper<List<NewsArticle>?>> getNewsArticles(
    @Query('country') String? country,
    @Query('language') String? language,
    @Query('page') String? page,
    @Query('category') String? category,
  );
}
