
// ignore_for_file: file_names

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layout/News_layout/cubit/cubit.dart';
import '../../../layout/News_layout/cubit/states.dart';
import '../../../shared/components/components.dart';



class ScienceScreen extends StatelessWidget {
  const ScienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NewsCubit cubit=NewsCubit.get(context);
    return  BlocConsumer<NewsCubit,NewsStates>(
      builder: (BuildContext context, state) {
        var list=cubit.science;
        return  ConditionalBuilder(
          builder: (context) => articleBuilder(list,context),
          condition: state is! GetScienceErrorState,
          fallback: (context) => const Center(
            child: Text(
                'Error in the network'
            ),
          ),
        );
      },
      listener: (BuildContext context, Object? state) {  },

    );
  }
}

