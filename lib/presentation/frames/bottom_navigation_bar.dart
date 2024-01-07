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
    label: 'Gaming',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.settings),
    label: 'Settings',
  ),
];

const List<Widget> bottomNavScreen = <Widget>[
  NewsFeedPage(
    pageTitle: 'Top News',
  ),
  Text('Index 1: Sports'),
  Text('Index 2: Gaming'),
  Text('Index 3: Settings'),
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
            body: SafeArea(child: Center(child: bottomNavScreen.elementAt(state.tabIndex))),
            bottomNavigationBar: BottomNavigationBar(
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
