// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

import 'package:newsfeed_test/main.dart';
import 'package:newsfeed_test/presentation/bloc/navigation_bar/navigation_bar_bloc.dart';
import 'package:newsfeed_test/presentation/bloc/news_feed/news_feed_bloc.dart';

class MockNavigationBarBloc
    extends MockBloc<NavigationBarEvent, NavigationBarState>
    implements NavigationBarBloc {}

class MockNewsFeedBloc extends MockBloc<NewsFeedEvent, NewsFeedState>
    implements NewsFeedBloc {}

void main() {
  GetIt getIt = GetIt.instance;
  final NavigationBarBloc bloc = MockNavigationBarBloc();
  final NewsFeedBloc bloc2 = MockNewsFeedBloc();

  setUp(() {
    getIt.registerFactory(() => bloc);
    getIt.registerFactory(() => bloc2);
  });

  tearDown(() {
    getIt.reset();
  });

  group('Bottom navigation bar', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      whenListen(
        bloc,
        Stream.value(
          const NavigationBarSelected(tabIndex: 0),
        ),
        initialState: const NavigationBarSelected(tabIndex: 0),
      );
      whenListen(
        bloc2,
        Stream.fromIterable(
          [
            NewsFeedEmpty(),
          ],
        ),
        initialState: NewsFeedEmpty(),
      );

      await tester.pumpWidget(const MyApp());
      final finder = find.byKey(const Key('nav-bar'));
      expect(finder, findsOneWidget);
    });

    testWidgets('taps icon 1 correctly', (WidgetTester tester) async {
      whenListen(
        bloc,
        Stream.value(
          const NavigationBarSelected(tabIndex: 0),
        ),
        initialState: const NavigationBarSelected(tabIndex: 1),
      );
      whenListen(
        bloc2,
        Stream.fromIterable(
          [
            NewsFeedEmpty(),
          ],
        ),
        initialState: NewsFeedEmpty(),
      );

      await tester.pumpWidget(const MyApp());
      final icon1Finder = find.byIcon(Icons.newspaper);

      //block change index to mock
      await tester.tap(icon1Finder);
      await tester.pump();

      expect(bloc.state, const NavigationBarSelected(tabIndex: 0));
    });

    testWidgets('taps icon 2 correctly', (WidgetTester tester) async {
      whenListen(
        bloc,
        Stream.value(
          const NavigationBarSelected(tabIndex: 1),
        ),
        initialState: const NavigationBarSelected(tabIndex: 0),
      );
      whenListen(
        bloc2,
        Stream.fromIterable(
          [
            NewsFeedEmpty(),
          ],
        ),
        initialState: NewsFeedEmpty(),
      );

      await tester.pumpWidget(const MyApp());
      final icon1Finder = find.byIcon(Icons.sports_martial_arts);

      //block change index to mock
      await tester.tap(icon1Finder);
      await tester.pump();

      expect(bloc.state, const NavigationBarSelected(tabIndex: 1));
    });

    testWidgets('taps icon 3 correctly', (WidgetTester tester) async {
      whenListen(
        bloc,
        Stream.value(
          const NavigationBarSelected(tabIndex: 2),
        ),
        initialState: const NavigationBarSelected(tabIndex: 0),
      );
      whenListen(
        bloc2,
        Stream.fromIterable(
          [
            NewsFeedEmpty(),
          ],
        ),
        initialState: NewsFeedEmpty(),
      );

      await tester.pumpWidget(const MyApp());
      final icon1Finder = find.byIcon(Icons.sports_esports);

      //block change index to mock
      await tester.tap(icon1Finder);
      await tester.pump();

      expect(bloc.state, const NavigationBarSelected(tabIndex: 2));
    });

    testWidgets('taps icon 4 correctly', (WidgetTester tester) async {
      whenListen(
        bloc,
        Stream.value(
          const NavigationBarSelected(tabIndex: 3),
        ),
        initialState: const NavigationBarSelected(tabIndex: 0),
      );
      whenListen(
        bloc2,
        Stream.fromIterable(
          [
            NewsFeedEmpty(),
          ],
        ),
        initialState: NewsFeedEmpty(),
      );

      await tester.pumpWidget(const MyApp());
      final icon1Finder = find.byIcon(Icons.science);

      //block change index to mock
      await tester.tap(icon1Finder);
      await tester.pump();

      expect(bloc.state, const NavigationBarSelected(tabIndex: 3));
    });
  });
}
