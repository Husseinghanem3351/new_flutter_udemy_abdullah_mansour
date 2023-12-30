import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/App_cubit/cubit.dart';
import '../../../shared/App_cubit/states.dart';
import '../../../shared/components/components.dart';


class DoneTasks extends StatelessWidget {
  const DoneTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoCubit,AppStates>(
      builder: (BuildContext context, state) {
        return ListView.separated(
          itemBuilder: (context, index) => buildTaskItem(
            date: TodoCubit.get(context).doneTasksList[index]['date'],
            time: TodoCubit.get(context).doneTasksList[index]['time'],
            title: TodoCubit.get(context).doneTasksList[index]['title'],
            id: TodoCubit.get(context).doneTasksList[index]['id'],
            context: context,
            archiveIcon: Icons.archive,
            archiveButton: (){
              TodoCubit.get(context).updateData(
                  status: 'Archive',
                  id: TodoCubit.get(context).doneTasksList[index]['id']);
            },
          ),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
          ),
          itemCount: TodoCubit.get(context).doneTasksList.length,
        );
      },
      listener: (BuildContext context, Object? state) {  },

    );
  }
}
