import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:newsfeed_test/data/models/news_article/news_article.dart';

import 'package:newsfeed_test/presentation/bloc/news_feed/news_feed_bloc.dart';
import 'package:newsfeed_test/presentation/pages/news_feed/news_feed_page.dart';

class MockNewsFeedBloc extends MockBloc<NewsFeedEvent, NewsFeedState>
    implements NewsFeedBloc {}

void main() {
  GetIt getIt = GetIt.instance;
  final NewsFeedBloc bloc = MockNewsFeedBloc();

  setUp(() {
    getIt.registerFactory(() => bloc);
  });

  tearDown(() {
    getIt.reset();
  });

  group('News feed page', () {
    final widget = MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => getIt<NewsFeedBloc>(),
          ),
        ],
        child: const MaterialApp(
          home: NewsFeedPage(
            pageTitle: 'Test',
            category: 'test_category',
            key: Key('nf-page'),
          ),
        ));
    testWidgets('renders correctly', (WidgetTester tester) async {
      whenListen(
        bloc,
        Stream.value(
          NewsFeedEmpty(),
        ),
        initialState: NewsFeedEmpty(),
      );

      await tester.pumpWidget(widget);
      final finder = find.byKey(const Key('nf-page'));
      expect(finder, findsOneWidget);
    });

    testWidgets('loads content', (WidgetTester tester) async {
      whenListen(
        bloc,
        Stream.value(
          NewsFeedLoading(),
        ),
        initialState: NewsFeedLoading(),
      );

      await tester.pumpWidget(widget);
      final finder = find.byKey(const Key('nf-page-loading'));
      expect(finder, findsOneWidget);
    });

    testWidgets('shows error', (WidgetTester tester) async {
      whenListen(
        bloc,
        Stream.value(
          NewsFeedError('message'),
        ),
        initialState: NewsFeedError('message'),
      );

      await tester.pumpWidget(widget);
      final finder = find.text('message');
      expect(finder, findsOneWidget);
    });

    testWidgets('shows error', (WidgetTester tester) async {
      whenListen(
        bloc,
        Stream.value(
          NewsFeedError('message'),
        ),
        initialState: NewsFeedError('message'),
      );

      await tester.pumpWidget(widget);
      final finder = find.text('message');
      expect(finder, findsOneWidget);
    });

    testWidgets('shows data', (WidgetTester tester) async {
      final state = NewsFeedHasData([
        NewsArticle(
          articleId: '1',
          title: 'title 1',
          creator: ['creator 2'],
          pubDate: DateTime.now(),
        ),
        NewsArticle(
          articleId: '2',
          title: 'title 2',
          creator: ['creator 2'],
          pubDate: DateTime.now(),
        )
      ], '', false);
      whenListen(
        bloc,
        Stream.value(state),
        initialState: state,
      );

      await tester.pumpWidget(widget);
      final finder = find.text('title 1');
      expect(finder, findsOneWidget);
      final finder2 = find.text('title 2');
      expect(finder2, findsOneWidget);
    });
  });
}
