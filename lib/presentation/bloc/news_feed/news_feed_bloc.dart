import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsfeed_test/data/models/news_article/news_article.dart';
import 'package:newsfeed_test/domain/usecases/news_feed_usecase.dart';
import 'package:rxdart/rxdart.dart';
import 'package:equatable/equatable.dart';

part 'news_feed_event.dart';
part 'news_feed_state.dart';

class NewsFeedBloc extends Bloc<NewsFeedEvent, NewsFeedState> {
  final NewsFeedUseCase _newsFeedUseCase;

  NewsFeedBloc(this._newsFeedUseCase) : super(NewsFeedEmpty()) {
    on<OnLoad>(
      (event, emit) async {
        emit(NewsFeedLoading());

        final result = await _newsFeedUseCase.executeGetNewsArticles(
          category: event.category,
        );
        result.fold(
          (failure) {
            emit(NewsFeedError(failure.message));
          },
          (data) {
            emit(NewsFeedHasData(data.results!, data.nextPage!, false));
          },
        );
      },
      transformer: debounce(const Duration(milliseconds: 500)),
    );
    on<OnLoadMore>(
      (event, emit) async {
        emit(NewsFeedHasData(state.result, state.nextPage, true));

        final result = await _newsFeedUseCase.executeGetNewsArticles(
          page: state.nextPage,
        );
        result.fold(
          (failure) {
            emit(NewsFeedError(failure.message));
          },
          (data) {
            emit(NewsFeedHasData(
                [...state.result, ...data.results!], data.nextPage!, false));
          },
        );
      },
      transformer: debounce(const Duration(milliseconds: 500)),
    );
  }

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}
