import 'package:basketball/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterBIncrementState());

  int teamAPpint = 0;
  int teamBPpint = 0;

  void TeamIncrement({required String team, required int buttoneNumber}) {
    if (team == 'A') {
      teamAPpint += buttoneNumber;
      emit(CounterAIncrementState());
    } else {
      teamBPpint += buttoneNumber;
      emit(CounterBIncrementState());
    }
  }

  void resetPoints() {
    teamAPpint = 0;
    emit(CounterAIncrementState());
    teamBPpint = 0;
    emit(CounterBIncrementState());
  }
}
