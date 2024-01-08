import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsfeed_test/presentation/bloc/news_feed/news_feed_bloc.dart';
import 'package:newsfeed_test/presentation/pages/news_feed/components/news_article_more_button.dart';
import 'package:newsfeed_test/presentation/pages/news_feed/components/news_article_preview.dart';
import 'package:newsfeed_test/presentation/pages/news_feed/components/news_feed_title.dart';

class NewsFeedPage extends StatelessWidget {
  final String pageTitle;
  final String category;

  const NewsFeedPage(
      {Key? key, required this.pageTitle, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<NewsFeedBloc>().add(OnLoad(category: category));
    return BlocBuilder<NewsFeedBloc, NewsFeedState>(
      builder: (context, state) {
        if (state is NewsFeedError) {
          return Center(
            child: Text(state.message),
          );
        }

        if (state is NewsFeedLoading) {
          return const Center(
            child: CircularProgressIndicator(key: Key('nf-page-loading')),
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.separated(
                key: const Key('article-listview'),
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NewsFeedTitle(
                          title: pageTitle,
                        ),
                        NewsArticlePreview(
                          article: state.result[index],
                        ),
                      ],
                    );
                  }
                  if (index == state.result.length - 1) {
                    return Column(
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
                    );
                  }
                  return NewsArticlePreview(article: state.result[index]);
                },
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
