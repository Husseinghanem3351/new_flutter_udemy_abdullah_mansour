abstract class CounterStates {}

class CounterInitialState extends CounterStates {}

class CounterPlusStates extends CounterStates {
  int counter;
  CounterPlusStates(this.counter);
}

class CounterMinusStates extends CounterStates {
  int counter;
  CounterMinusStates(this.counter);
}