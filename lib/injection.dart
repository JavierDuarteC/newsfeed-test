import 'package:get_it/get_it.dart';
import 'package:newsfeed_test/data/datasources/service.dart';
import 'package:newsfeed_test/domain/repositories/news_feed_repository.dart';
import 'package:newsfeed_test/domain/usecases/news_feed_usecase.dart';
import 'package:newsfeed_test/presentation/bloc/news_feed_bloc.dart';
import 'package:newsfeed_test/utils/constants.dart';
import 'package:newsfeed_test/utils/dio_client.dart';

final locator = GetIt.instance;

void init() {
    // bloc
  locator.registerFactory(() => NewsFeedBloc(locator()));

  // usecases
  locator.registerLazySingleton<NewsFeedUseCase>(
    () => NewsFeedUseCase(
      repository: locator(),
    ),
  );

  // repositories
  locator.registerLazySingleton<NewsFeedRepository>(
    () => NewsFeedRepository(
      restClient: locator(),
    ),
  );

  // data sources
  locator.registerLazySingleton<RestClient>(
    () => RestClient(
      locator(),
    ),
  );

  // external
  final dio = CustomDioClient.buildDioClient(Constants.baseUrl);
  locator.registerLazySingleton(() => dio);
}
