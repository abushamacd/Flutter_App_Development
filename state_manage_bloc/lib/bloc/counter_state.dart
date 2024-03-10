// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

// @immutable
abstract class CounterState {
  int count;
  CounterState(this.count);
}

class CounterInitial extends CounterState {
  CounterInitial(super.count);
}

class NumberIncrement extends CounterState {
  NumberIncrement(super.count);
}
