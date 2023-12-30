
// ignore_for_file: file_names

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layout/News_layout/cubit/cubit.dart';
import '../../../layout/News_layout/cubit/states.dart';
import '../../../shared/components/components.dart';


class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
      builder: (BuildContext context, state) {
        var list=NewsCubit.get(context).business;
        return ConditionalBuilder(
            builder: (context) => articleBuilder(list,context),
          condition: state is! GetBusinessErrorState,
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
