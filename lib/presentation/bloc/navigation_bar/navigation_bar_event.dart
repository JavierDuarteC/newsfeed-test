part of 'navigation_bar_bloc.dart';

@immutable
abstract class NavigationBarEvent extends Equatable {
  const NavigationBarEvent();

  @override
  List<Object?> get props => [];
}

class OnChangeTab extends NavigationBarEvent {
  final int selectedTab;

  const OnChangeTab({required this.selectedTab});

  @override
  List<Object?> get props => [selectedTab];
}
