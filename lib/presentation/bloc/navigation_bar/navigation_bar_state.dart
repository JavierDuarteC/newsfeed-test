part of 'navigation_bar_bloc.dart';

@immutable
abstract class NavigationBarState extends Equatable {
  const NavigationBarState();

  @override
  List<Object?> get props => [];
}

class NavigationBarSelected extends NavigationBarState {
  final int tabIndex;

  const NavigationBarSelected({required this.tabIndex});

  @override
  List<Object?> get props => [tabIndex];
}
