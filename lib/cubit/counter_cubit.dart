import 'package:basketball_points/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamApoints = 0;

  int teamBpoints = 0;

  void teamInrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamApoints += buttonNumber;
      emit(CounterAIncrementState());
    }
    if (team == 'B') {
      teamBpoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }

  void teamReset() {
    teamApoints = 0;

    teamBpoints = 0;
    emit(ResetState());
  }
}
