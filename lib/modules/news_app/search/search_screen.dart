

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layout/News_layout/cubit/cubit.dart';
import '../../../layout/News_layout/cubit/states.dart';
import '../../../shared/components/components.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({Key? key}) : super(key: key);
  final searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
        listener: (context, state) {},
        builder: (context, state) {
         var list=NewsCubit.get(context).search;
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: defaultTextBox(
                  onChange: (String value){
                    NewsCubit.get(context).getSearch(value);
                  },
                  tBController: searchController,
                  keyType: TextInputType.text,
                  labelText: 'search',
                  preIcon: const Icon(Icons.search),
                  obscure: false,
                  validate: (value){
                    if(value!=null){
                      return 'the field must be not empty';
                    }
                    return null;
                  },
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: TextFormField(
              //     onChanged: (String value){
              //       NewsCubit.get(context).getSearch(value);
              //     },
              //     decoration: const InputDecoration(
              //       border: OutlineInputBorder(),
              //       labelText: 'Search',
              //       prefixIcon: Icon(Icons.search),
              //     ),
              //     keyboardType: TextInputType.text,
              //     controller: searchController,
              //   ),
              // ),
              Expanded(child:  ConditionalBuilder(
                builder: (context) => articleBuilder(list,context),
               condition: state is! GetSearchErrorState,
               fallback: (context) => const Center(
                child: Text(
                'Error in the network'
                ),
                ),
                )),
            ],
          ),
        );},
    );
  }
}
