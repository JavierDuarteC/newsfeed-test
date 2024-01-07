import 'package:flutter/material.dart';
import 'package:newsfeed_test/data/models/news_article/news_article.dart';
import 'package:newsfeed_test/presentation/pages/news_feed/news_article_detail_page.dart';
import 'package:timeago/timeago.dart' as timeago;

class NewsArticlePreview extends StatelessWidget {
  final NewsArticle article;
  const NewsArticlePreview({required this.article, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            NewsArticleDetail.routeName,
            arguments: NewsArticleDetailArguments(
              article: article,
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                if (article.imageUrl?.isNotEmpty ?? false)
                  Image.network(
                    article.imageUrl!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 250,
                  ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 8.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (article.creator?.isNotEmpty ?? false)
                        Text(
                          article.creator!
                              .reduce((value, element) => '$value, $element'),
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                      Text(
                        article.title ?? '',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                const Divider(thickness: 0.5),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    bottom: 8.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (article.pubDate != null)
                        Text(
                          timeago.format(article.pubDate!),
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                        ),
                      Text(
                        '...',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
