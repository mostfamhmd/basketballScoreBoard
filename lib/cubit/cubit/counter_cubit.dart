import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterIncrement());
  int teamACounter = 0;
  int teamBCounter = 0;

  void TeamIncrement({String? nameTeam, required int addPoint}) {
    if (nameTeam == "A") {
      teamACounter += addPoint;
      emit(CounterIncrement());
    } else if (nameTeam == "B") {
      teamBCounter += addPoint;
      emit(CounterIncrement());
    } else {
      teamACounter = 0;
      teamBCounter = 0;
      emit(CounterIncrement());
    }
  }
}
