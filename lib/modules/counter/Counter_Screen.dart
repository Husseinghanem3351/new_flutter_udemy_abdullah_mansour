import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class CounterScreen extends StatelessWidget {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit() ,
      child: BlocConsumer<CounterCubit,CounterStates>(
          builder: (context, state) { return Scaffold(
            appBar: AppBar(
              title: const Text('Counter'),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).minus();
                    },
                    child: const Text(
                      'Minus',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      '${CounterCubit.get(context).counter}',
                      style: const TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).plus();
                    },
                    child: const Text(
                      'Plus',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ); },
          listener: (context, state) {
            // if(state is CounterMinusStates) print('Minus state  ${state.counter}');
            // if(state is CounterPlusStates) print('Plus State  ${state.counter}');
          },
      ),

    );
  }
}
