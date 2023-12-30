import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/App_cubit/cubit.dart';
import '../../../shared/App_cubit/states.dart';
import '../../../shared/components/components.dart';


class ArchivedTasks extends StatelessWidget {
  const ArchivedTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoCubit,AppStates>(
      builder: (BuildContext context, state) {
        return ListView.separated(
          itemBuilder: (context, index) => buildTaskItem(
            date: TodoCubit.get(context).archivedTasksList[index]['date'],
            time: TodoCubit.get(context).archivedTasksList[index]['time'],
            title: TodoCubit.get(context).archivedTasksList[index]['title'],
            id: TodoCubit.get(context).archivedTasksList[index]['id'],
            context: context,
            archiveIcon: Icons.unarchive,
            doneIcon: IconButton(
              onPressed: (){
                TodoCubit.get(context).updateData(status: 'Done', id: TodoCubit.get(context).newTasksList[index]['id'],);
              },
              icon: const Icon(
                Icons.check_circle,
                color:Colors.green,
              ),

            ), archiveButton: (){
            TodoCubit.get(context).updateData(status: 'new', id: TodoCubit.get(context).archivedTasksList[index]['id']);
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
          itemCount: TodoCubit.get(context).archivedTasksList.length,
        );
      },
      listener: (BuildContext context, Object? state) {  },

    );
  }
}
