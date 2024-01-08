import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/annotations.dart';
import 'package:newsfeed_test/data/failure.dart';
import 'package:newsfeed_test/data/models/news_article/news_article.dart';
import 'package:newsfeed_test/data/models/response/response_wrapper.dart';
import 'package:newsfeed_test/domain/usecases/news_feed_usecase.dart';
import 'package:mockito/mockito.dart';
import 'package:newsfeed_test/presentation/bloc/news_feed/news_feed_bloc.dart';

@GenerateMocks([NewsFeedUseCase])
import 'news_feed_bloc_test.mocks.dart';

void main() {
  late NewsFeedUseCase uc = MockNewsFeedUseCase();
  group('NewsFeedBloc', () {
    test('initial state is loading', () {
      expect(NewsFeedBloc(uc).state, NewsFeedEmpty());
    });

    blocTest<NewsFeedBloc, NewsFeedState>(
      'emits [ NewsFeedLoading,NewsFeedError ] when loading fails',
      setUp: () => when(uc.executeGetNewsArticles(
        page: anyNamed('page'),
        category: anyNamed('category'),
      )).thenAnswer((_) async => const Left(ServerFailure('Error'))),
      build: () => NewsFeedBloc(uc),
      act: (bloc) => bloc.add(const OnLoad(category: '')),
      expect: () => <NewsFeedState>[NewsFeedLoading(), NewsFeedError('Error')],
      verify: (_) => verify(uc.executeGetNewsArticles(
        page: anyNamed('page'),
        category: anyNamed('category'),
      )).called(1),
    );

    const list = [NewsArticle(articleId: '1')];
    blocTest<NewsFeedBloc, NewsFeedState>(
      'emits [ NewsFeedLoading,NewsFeedHasData ] when loading succeeds',
      setUp: () => when(uc.executeGetNewsArticles(
        page: anyNamed('page'),
        category: anyNamed('category'),
      )).thenAnswer((_) async => Right(const ResponseWrapper(
            status: 'success',
            results: list,
            nextPage: 'next',
            totalResults: 10,
          ))),
      build: () => NewsFeedBloc(uc),
      act: (bloc) => bloc.add(const OnLoad(category: '')),
      expect: () => <NewsFeedState>[
        NewsFeedLoading(),
        const NewsFeedHasData(list, 'next', false)
      ],
      verify: (_) => verify(uc.executeGetNewsArticles(
        page: anyNamed('page'),
        category: anyNamed('category'),
      )).called(1),
    );
  });
}
