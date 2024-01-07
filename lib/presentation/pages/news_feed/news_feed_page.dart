import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsfeed_test/presentation/bloc/news_feed/news_feed_bloc.dart';
import 'package:newsfeed_test/presentation/pages/news_feed/news_article_more_button.dart';
import 'package:newsfeed_test/presentation/pages/news_feed/news_article_preview.dart';

class NewsFeedPage extends StatelessWidget {
  static const routeName = '/news_feed';

  const NewsFeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<NewsFeedBloc>().add(const OnLoad());
    return BlocBuilder<NewsFeedBloc, NewsFeedState>(
      builder: (context, state) {
        if (state is NewsFeedError) {
          return Center(
            child: Text(state.message),
          );
        }

        if (state is NewsFeedLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return Column(
          children: [
            Expanded(
              child: ListView.separated(
                key: const Key('article-listview'),
                itemBuilder: (context, index) => (index ==
                        state.result.length - 1)
                    // if (state is NewsFeedHasDataAsList || state is NewsFeedLoading) {
                    ? Column(
                        children: [
                          NewsArticlePreview(
                            article: state.result[index],
                          ),
                          NewsArticleMoreButton(
                            isLoading: state.isLoadingMore,
                            onPressed: () {
                              context
                                  .read<NewsFeedBloc>()
                                  .add(const OnLoadMore());
                            },
                          ),
                        ],
                      )
                    : NewsArticlePreview(article: state.result[index]),
                separatorBuilder: (context, _) => const SizedBox(
                  height: 8.0,
                ),
                itemCount: state.result.length,
              ),
            ),
          ],
        );
      },
    );
  }

  // void _navigateToDetail(BuildContext context, NewsArticle article) {
  //   Navigator.pushNamed(
  //     context,
  //     UniversityDetail.routeName,
  //     arguments: UniversityDetailArguments(article),
  //   );
  // }
}
