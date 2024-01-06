import 'package:equatable/equatable.dart';
import 'package:newsfeed_test/data/models/news_article/news_article.dart';

abstract class NewsFeedState extends Equatable {
  const NewsFeedState();

  @override
  List<Object?> get props => [];
}

class NewsFeedEmpty extends NewsFeedState {}

class NewsFeedLoading extends NewsFeedState {}

class NewsFeedError extends NewsFeedState {
  final String message;

  const NewsFeedError(this.message);

  @override
  List<Object?> get props => [message];
}

class NewsFeedHasDataAsList extends NewsFeedState {
  final List<NewsArticle> result;

  const NewsFeedHasDataAsList(this.result);

  @override
  List<Object?> get props => [result];
}

class NewsFeedHasDataAsGrid extends NewsFeedState {
  final List<NewsArticle> result;

  const NewsFeedHasDataAsGrid(this.result);

  @override
  List<Object?> get props => [result];
}