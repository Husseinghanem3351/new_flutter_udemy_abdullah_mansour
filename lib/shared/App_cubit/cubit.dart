import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_udemy2/shared/App_cubit/states.dart';
import 'package:new_flutter_udemy2/shared/network/local/cache_helper.dart';
import 'package:sqflite/sqflite.dart';
import 'package:http/http.dart' as http;
import '../../modules/todo_app/Done_tasks/DoneTasks.dart';
import '../../modules/todo_app/archived_tasks/archived_tasks.dart';
import '../../modules/todo_app/new_tasks/new_tasks.dart';
import '../network/remote/dio_helper.dart';

class TodoCubit extends Cubit<AppStates> {
  TodoCubit() : super(InitialState());

  static TodoCubit get(context) => BlocProvider.of(context);

  List<Widget> screens = [
    NewTasks(),
    const DoneTasks(),
    const ArchivedTasks(),
  ];
  List<String> labels = [
    'NewTasks',
    'DoneTasks',
    'Archived Tasks',
  ];
  int currentIndex = 0;
  late Database dataBase;
  IconData floatingIcon = Icons.edit;
  List<Map> newTasksList = [];
  List<Map> doneTasksList = [];
  List<Map> archivedTasksList = [];
  bool isBottomSheetShown = false;

  void onTapBottom(int index) {
    currentIndex = index;
    emit(ChangeBottomNavigationBar());
  }

  void createDatabase() {
    openDatabase(
      'todo.db',
      version: 1,
      onCreate: (
        database,
        version,
      ) {
        database
            .execute(
              'create table tasks(id integer primary key, title text,date text, time text, status text )',
            )
            .then((value) {})
            .catchError((error) {
          print(error.toString());
        });
      },
      onOpen: (database) {
        getData(database);
      },
    ).then((value) {
      dataBase = value;
      emit(CreateDatabase());
    });
  }

  void updateData({required String status, required int id}) {
    dataBase.rawUpdate(
      'UPDATE tasks set status = ? where id = ?',
      [status, id],
    ).then((value) {
      getData(dataBase);
      emit(UpdateData());
    });
  }

  insertToDatabase({
    required String title,
    required String date,
    required String time,
  }) async {
    await dataBase.transaction(
      (txn) {
        return txn
            .rawInsert(
                'insert into tasks(title,date,time,status) values("$title","$date","$time","new")')
            .then((value) {
          emit(InsertToDatabase());
          getData(dataBase);
        }).catchError((error) {
          print(error.toString());
        });
      },
    );
  }

  void getData(database) {
    newTasksList = [];
    doneTasksList = [];
    archivedTasksList = [];
    emit(LoadingGetDataFromDatabase());
    database.rawQuery('select * from tasks').then((value) {
      value.forEach((element) {
        if (element['status'] == 'Done') {
          doneTasksList.add(element);
        } else if (element['status'] == 'new') {
          newTasksList.add(element);
        } else {
          archivedTasksList.add(element);
        }
      });
      emit(GetDataFromDatabase());
    });
  }

  void deleteData(int id) {
    dataBase.rawDelete(
      'delete from tasks where id =?',
      [id],
    ).then((value) {
      getData(dataBase);
      emit(DeleteData());
    });
  }

  void changeBottomSheetState({required bool isShow, required IconData icon}) {
    isBottomSheetShown = isShow;
    floatingIcon = icon;
    emit(ChangeBottomSheetState());
  }

  bool isDark = false;

  void changeDarkMode({bool? fromShared}) {
    if (fromShared != null) {
      isDark = fromShared;
    } else {
      isDark = !isDark;
      CacheHelper.putData(key: 'isDark', value: isDark).then((value) {
        emit(ChangeDarkModeState());
      });
    }
  }

  void getAPIDate() {
    DioHelper.getData(
      url: 'data',
    ).then((value) {
      print(value);
    }).catchError((error) {
      print(error);
    });
  }
}

// var url =
// Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});
//
// // Await the http get response, then decode the json-formatted response.
// var response = await http.get(url);
// if (response.statusCode == 200) {
// var jsonResponse =
// convert.jsonDecode(response.body) as Map<String, dynamic>;
// var itemCount = jsonResponse['totalItems'];
// print('Number of books about http: $itemCount.');
// } else {
// print('Request failed with status: ${response.statusCode}.');
// }