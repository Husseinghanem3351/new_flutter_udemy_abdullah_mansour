import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../shared/components/components.dart';


import '../shared/App_cubit/cubit.dart';
import '../shared/App_cubit/states.dart';


class HomeLayout extends StatelessWidget
{
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final timeController = TextEditingController();
  final dateController = TextEditingController();
  late final int hour;
  late final int minutes;
  HomeLayout({Key? key}):super(key:  key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>TodoCubit()..createDatabase()..getAPIDate(),
      child: BlocConsumer<TodoCubit,AppStates>(
        builder: (context,state){
          TodoCubit cubit= TodoCubit.get(context);
          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              title: Text(
                cubit.labels[cubit.currentIndex],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (cubit.isBottomSheetShown) {
                  if (formKey.currentState != null) {
                    if (formKey.currentState!.validate()) {
                      cubit.changeBottomSheetState(
                          isShow: false,
                          icon: Icons.edit,
                      );
                      cubit.insertToDatabase(
                        title: titleController.text,
                          date: dateController.text,
                          time: timeController.text,
                      );
                      titleController.clear();
                      dateController.clear();
                      timeController.clear();
                    }
                  }
                }
                else {
                  cubit.changeBottomSheetState(isShow: true, icon: Icons.add);
                  scaffoldKey.currentState
                      ?.showBottomSheet(
                        (context) => Container(
                          color: Colors.white,
                          padding: const EdgeInsetsDirectional.all(20),
                          child: Form(
                            key: formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                defaultTextBox(
                                  tBController: titleController,
                                  keyType: TextInputType.text,
                                  labelText: 'Title',
                                  preIcon: const Icon(Icons.title),
                                  obscure: false,
                                  validate:(value){
                                    if(value!=null){
                                      return 'title must be not empty';
                                    }
                                  },
                                  onTap: () {},
                                  onFieldSubmitted: (value) {},
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                defaultTextBox(
                                  tBController: timeController,
                                  keyType: TextInputType.datetime,
                                  labelText: 'Time',
                                  preIcon: const Icon(Icons.access_time),
                                  obscure: false,
                                  validate: (value){
                                    if(value!=null){
                                      return 'time must be not empty';
                                    }
                                  },
                                  onTap: () {
                                    showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),
                                    ).then((value) {
                                      if(value!=null){
                                        timeController.text = value.format(context);
                                        hour= value.hour;
                                        minutes=value.minute;
                                      }

                                    });
                                    return 'time input';
                                  },
                                  onlyRead: true,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                defaultTextBox(
                                    onlyRead: true,
                                    tBController: dateController,
                                    keyType: TextInputType.datetime,
                                    labelText: 'date',
                                    preIcon: const Icon(Icons.calendar_month),
                                    obscure: false,
                                    validate: (value){
                                      if(value!=null){
                                        return 'date must be not empty';
                                      }
                                    },
                                    onTap: () {
                                      showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime.now(),
                                        lastDate: DateTime.parse('2024-01-01'),
                                      ).then((value) {
                                        if(value!=null){
                                          dateController.text =
                                              DateFormat.yMMMd().format(value);
                                        }
                                      });
                                      return 'date input';
                                    }),
                              ],
                            ),
                          ),
                    ),
                    elevation: 15,
                  )
                      .closed
                      .then((value) {
                   cubit.changeBottomSheetState(isShow: false, icon: Icons.edit);
                  });

                }
              },
              child: Icon(
                cubit.floatingIcon,
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,
              elevation: 0,
              onTap: (index) {
                cubit.onTapBottom(index);
                // setState(() {
                //   Screen = screens[index];
                //   i = index;
                // });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.list_rounded),
                  label: 'Tasks',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.task_alt),
                  label: 'Done Tasks',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.archive_outlined),
                  label: 'Archived Tasks',
                ),
              ],
              //backgroundColor: Colors,
            ),
            body: ConditionalBuilder(
              builder: (context) => cubit.screens[cubit.currentIndex],
              condition: state is ! LoadingGetDataFromDatabase,
              fallback: (context) => const Center(child: CircularProgressIndicator()),
            ),
          );
        },
        listener: (context,state){
          if(state is InsertToDatabase) Navigator.pop(context);
        },
      ),
    );


  }

}



//1. Create database
//2.Create tables
//3.open database
//4. insert
//5. get
//6. update
//7. delete
