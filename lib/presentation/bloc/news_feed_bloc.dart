import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsfeed_test/data/models/news_article/news_article.dart';
import 'package:newsfeed_test/domain/usecases/news_feed_usecase.dart';
import 'package:newsfeed_test/presentation/bloc/news_feed_event.dart';
import 'package:newsfeed_test/presentation/bloc/news_feed_state.dart';
import 'package:rxdart/rxdart.dart';

class NewsFeedBloc extends Bloc<NewsFeedEvent, NewsFeedState> {
  final NewsFeedUseCase _newsFeedUseCase;

  List<NewsArticle> _articles = [];

  NewsFeedBloc(this._newsFeedUseCase) : super(NewsFeedEmpty()) {
    on<OnLoad>(
      (event, emit) async {
        emit(NewsFeedLoading());

        final result = await _newsFeedUseCase.executeGetNewsArticles();
        result.fold(
          (failure) {
            emit(NewsFeedError(failure.message));
          },
          (data) {
            _articles = data;
            emit(NewsFeedHasDataAsList(data));
          },
        );
      },
      transformer: debounce(const Duration(milliseconds: 500)),
    );
    on<OnChangeLayout>(
      (event, emit) async {
        final isList = event.isList;

        if (isList) {
          emit(NewsFeedHasDataAsList(_articles));
        } else {
          emit(NewsFeedHasDataAsGrid(_articles));
        }
      },
    );
  }

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}
