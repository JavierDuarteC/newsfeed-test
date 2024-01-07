part of 'news_feed_bloc.dart';

@immutable
abstract class NewsFeedState extends Equatable {
  final List<NewsArticle> result;
  final String nextPage;
  final bool isLoadingMore;

  const NewsFeedState(this.result, this.nextPage, this.isLoadingMore);

  @override
  List<Object?> get props => [];
}

class NewsFeedEmpty extends NewsFeedState {
  NewsFeedEmpty() : super([], '', false);
}

class NewsFeedLoading extends NewsFeedState {
  NewsFeedLoading() : super([], '', false);
}

class NewsFeedError extends NewsFeedState {
  final String message;

  NewsFeedError(this.message) : super([], '', false);

  @override
  List<Object?> get props => [message];
}

class NewsFeedHasData extends NewsFeedState {
  const NewsFeedHasData(
      List<NewsArticle> result, String nextPage, bool isLoadingMore)
      : super(result, nextPage, isLoadingMore);

  @override
  List<Object?> get props => [result, isLoadingMore];
}
