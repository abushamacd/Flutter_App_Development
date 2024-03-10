import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial(0)) {
    int count = 0;
    on<CounterEvent>((event, emit) {
      if (event is Increment) {
        count++;
        emit(NumberIncrement(count));
      }
    });
  }
}
