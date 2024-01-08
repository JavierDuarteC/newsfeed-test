import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsfeed_test/presentation/bloc/navigation_bar/navigation_bar_bloc.dart';
import 'package:newsfeed_test/presentation/pages/news_feed/news_feed_page.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.newspaper),
    label: 'Top',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.sports_martial_arts),
    label: 'Sports',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.sports_esports),
    label: 'E-Sports',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.science),
    label: 'Science',
  ),
];

const List<Widget> bottomNavScreen = <Widget>[
  NewsFeedPage(
    key: Key('nf-page-top-news'),
    pageTitle: 'Top News',
    category: 'top',
  ),
  NewsFeedPage(
    key: Key('nf-page-sports'),
    pageTitle: 'Sports',
    category: 'sports',
  ),
  NewsFeedPage(
    key: Key('nf-page-e-sports'),
    pageTitle: 'E-Sports',
    category: 'esports',
  ),
  NewsFeedPage(
    key: Key('nf-page-science'),
    pageTitle: 'Science',
    category: 'science',
  ),
];

class CustomBottomNavigationBar extends StatelessWidget {
  static const routeName = '/';

  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBarBloc, NavigationBarState>(
      builder: (context, state) {
        if (state is NavigationBarSelected) {
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: bottomNavScreen.elementAt(state.tabIndex),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              key: const Key('nav-bar'),
              items: bottomNavItems,
              currentIndex: state.tabIndex,
              selectedItemColor: Theme.of(context).colorScheme.primary,
              unselectedItemColor: Colors.grey,
              onTap: (index) {
                BlocProvider.of<NavigationBarBloc>(context)
                    .add(OnChangeTab(selectedTab: index));
              },
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
