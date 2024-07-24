import 'package:basketball_points_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  CounterCubit() : super(CounterInitial());

  int incrementTeam({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());

      return teamAPoints;
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
      return teamBPoints;
    }
  }

   reset() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterInitial());
  }
}
