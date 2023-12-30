//import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_udemy2/modules/counter/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates> {

 CounterCubit() : super(CounterInitialState());
  static CounterCubit get(context) => BlocProvider.of(context);
  int counter=1;

  void minus(){
    counter--;
    emit(CounterMinusStates(counter));
  }
  void plus(){
    counter++;
    emit(CounterPlusStates(counter));
  }
}
