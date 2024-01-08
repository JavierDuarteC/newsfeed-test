import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:newsfeed_test/presentation/bloc/navigation_bar/navigation_bar_bloc.dart';

void main() {
  group('NavigationBarBloc', () {
    test('initial state is loading', () {
      expect(
          NavigationBarBloc().state, const NavigationBarSelected(tabIndex: 0));
    });

    blocTest<NavigationBarBloc, NavigationBarState>(
      'emits [ NavigationBarSelected ] when Change Tab',
      build: () => NavigationBarBloc(),
      act: (bloc) => bloc.add(const OnChangeTab(selectedTab: 1)),
      expect: () =>
          <NavigationBarState>[const NavigationBarSelected(tabIndex: 1)],
    );
  });
}
