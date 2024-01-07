import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_bar_event.dart';
part 'navigation_bar_state.dart';

class NavigationBarBloc extends Bloc<NavigationBarEvent, NavigationBarState> {
  NavigationBarBloc() : super(const NavigationBarSelected(tabIndex: 0)) {
    on<OnChangeTab>((event, emit) async {
      final selectedTab = event.selectedTab;

      emit(NavigationBarSelected(tabIndex: selectedTab));
    });
  }
}
