import 'package:flutter/material.dart';
import 'package:newsfeed_test/presentation/frames/bottom_navigation_bar.dart';
import 'package:newsfeed_test/presentation/pages/news_feed/news_article_detail_page.dart';


class CustomRoutes {
  static getInitialRoute() {
    return CustomBottomNavigationBar.routeName;
  }

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      CustomBottomNavigationBar.routeName: (context) =>
          const CustomBottomNavigationBar(),
      NewsArticleDetail.routeName: (context) => const NewsArticleDetail(),
    };
  }
}
