import 'package:flutter/material.dart';
import 'package:newsfeed_test/data/models/news_article/news_article.dart';

class NewsArticlePreview extends StatelessWidget {
  final NewsArticle article;
  const NewsArticlePreview({required this.article, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () {
          //TODO: _navigateToDetail(context, state.result[index]);
          print(article.articleId);
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
                    article.imageUrl ?? '',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 300,
                  ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 24.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        article.category?.reduce(
                                (value, element) => '$value, $element') ??
                            '',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withOpacity(0.6),
                            ),
                      ),
                      Text(
                        article.title ?? '',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        article.creator?.reduce(
                                (value, element) => '$value, $element') ??
                            '',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      ),
                      Text(
                        article.content ?? '',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ],
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        //TODO: _navigateToDetail(context, state.result[index]);
                        print(article.articleId);
                      },
                      child: const Text('Read more...'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
