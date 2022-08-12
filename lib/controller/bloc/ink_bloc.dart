import 'package:bloc/bloc.dart';

import '../../models/ink.dart';
import '../repository/ink_repository.dart';


class BlocInkState {
  final List<Ink> inks;
  final StatusInk status;
  final int currentPage;

  BlocInkState(this.inks, this.status, this.currentPage);
  static BlocInkState get empty => BlocInkState([], StatusInk.empty, 0);

  BlocInkState copyWith(
      {List<Ink>? inks, StatusInk? status, int? currentPage}) {
    return BlocInkState(inks ?? this.inks, status ?? this.status,
        currentPage ?? this.currentPage);
  }
}

enum StatusInk { loading, error, success, empty }

class BlocInk extends Cubit<BlocInkState> {
  BlocInk(BlocInkState initialState) : super(BlocInkState.empty);

  InkRepository repository = InkRepository();

  void setCurrentPage(int page) {
    emit(state.copyWith(currentPage: page));
  }

  void getInks() async {
    emit(state.copyWith(status: StatusInk.loading));

    try {
      final response = await repository.getInk();
      emit(state.copyWith(inks: response, status: StatusInk.success));
    } catch (error) {
      emit(state.copyWith(status: StatusInk.error));
    }
    
  }
}
