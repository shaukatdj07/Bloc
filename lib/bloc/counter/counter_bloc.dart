

import 'package:bloc/bloc.dart';
import 'package:bloc_app/bloc/counter/counter_event.dart';
import 'package:bloc_app/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{
  CounterBloc(super.initialState);

}