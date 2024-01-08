import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:newsfeed_test/data/models/news_article/news_article.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsArticleDetailArguments {
  final NewsArticle article;

  NewsArticleDetailArguments({required this.article});
}

class NewsArticleDetail extends StatelessWidget {
  static const routeName = '/article_detail';

  const NewsArticleDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments
        as NewsArticleDetailArguments;
    final List<String> paragraphs =
        args.article.content?.split(RegExp(r'\.\s')) ?? [];
    return Scaffold(
      appBar: AppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: args.article.link != null
          ? Container(
              height: 50,
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () async {
                  final Uri url = Uri.parse(args.article.link!);
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Could not open source!'),
                        ),
                      );
                    }
                  }
                },
                child: const Center(
                  child: Text('Go to source'),
                ),
              ),
            )
          : const SizedBox(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                args.article.title ?? '',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              if (args.article.creator?.isNotEmpty ?? false)
                Text(
                  args.article.creator!
                      .reduce((value, element) => '$value, $element'),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              if (args.article.pubDate != null)
                Text(
                  DateFormat("MMMM d y HH:MM").format(args.article.pubDate!),
                  style: Theme.of(context).textTheme.labelSmall!,
                ),
              if (args.article.imageUrl?.isNotEmpty ?? false)
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Center(
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Image.network(
                        args.article.imageUrl!,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              if (paragraphs.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: paragraphs.length,
                    itemBuilder: (context, index) => Text(
                      "${paragraphs[index]}.",
                      style: Theme.of(context).textTheme.bodyMedium!,
                      textAlign: TextAlign.justify,
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 8.0,
                    ),
                  ),
                ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
