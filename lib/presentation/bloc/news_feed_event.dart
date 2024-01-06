import 'package:equatable/equatable.dart';

abstract class NewsFeedEvent extends Equatable {
  const NewsFeedEvent();

  @override
  List<Object?> get props => [];
}

class OnLoad extends NewsFeedEvent {
  const OnLoad();

  @override
  List<Object?> get props => [];
}

class OnChangeLayout extends NewsFeedEvent {
  final bool isList;

  const OnChangeLayout({required this.isList});

  @override
  List<Object?> get props => [isList];
}
