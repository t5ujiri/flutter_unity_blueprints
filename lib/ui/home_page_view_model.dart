import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'home_page_view_model.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    required int count,
  }) = _HomePageState;
}

class HomePageViewModel extends StateNotifier<HomePageState> with LocatorMixin {
  HomePageViewModel(HomePageState state) : super(state);

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }
}

final homePageViewModelProvider =
    StateNotifierProvider((ref) => HomePageViewModel(HomePageState(count: 0)));
