part of 'news_feed_bloc.dart';

@immutable
abstract class NewsFeedEvent extends Equatable {
  const NewsFeedEvent();

  @override
  List<Object?> get props => [];
}

class OnLoad extends NewsFeedEvent {
  final String category;
  const OnLoad({required this.category});

  @override
  List<Object?> get props => [];
}

class OnLoadMore extends NewsFeedEvent {
  const OnLoadMore();

  @override
  List<Object?> get props => [];
}
