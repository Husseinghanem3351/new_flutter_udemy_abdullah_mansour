import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_udemy2/layout/News_layout/cubit/states.dart';

import '../../../modules/news_app/business/businessScreen.dart';
import '../../../modules/news_app/science/scienceScreen.dart';
import '../../../modules/news_app/sports/sportsScreen.dart';
import '../../../shared/network/remote/dio_helper.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialStates());

  static NewsCubit get(context) => BlocProvider.of(context);

  List<String> labels = [
    'Science',
    'Sports',
    'Business',
  ];
  List<Widget> screens = [
    const ScienceScreen(),
    const SportsScreen(),
    const BusinessScreen(),
  ];
  int currentIndex = 0;
  List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.science,
      ),
      label: 'Science',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.sports),
      label: 'Sports',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.business),
      label: 'Business',
    ),
  ];

  void changeBottomNavBar(int index) {
    // if(index==1){
    //   getSports();
    // }
    // else if(index==2){
    //   getBusiness();
    // }
    currentIndex = index;
    emit(BottomNavStates());
  }

  List<dynamic> business = [];

  void getBusiness() {
    emit(GetBusinessLoadingState());
    DioHelper.getData(
      url:
          'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=00ca5eafa93a44c5b4c4b6b8594d12ee',
    ).then((value) {
      //print([1]['title'].toString());
      business = value.data['articles'];
      emit(GetBusinessSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetBusinessErrorState(error.toString()));
    });
  }

  List<dynamic> sports = [];

  void getSports() {
    emit(GetSportsLoadingState());

    if (sports.isEmpty) {
      DioHelper.getData(
        url:
            'https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=00ca5eafa93a44c5b4c4b6b8594d12ee',
      ).then((value) {
        //print([1]['title'].toString());
        sports = value.data['articles'];
        emit(GetSportsSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(GetSportsErrorState(error.toString()));
      });
    } else {
      emit(GetSportsSuccessState());
    }
  }

  List<dynamic> science = [];

  void getScience() {
    emit(GetScienceLoadingState());

    if (science.isEmpty) {
      DioHelper.getData(
        url:
            'https://newsapi.org/v2/top-headlines?country=us&category=science&apiKey=00ca5eafa93a44c5b4c4b6b8594d12ee',
      ).then((value) {
        //print([1]['title'].toString());
        science = value.data['articles'];
        emit(GetScienceSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(GetScienceErrorState(error.toString()));
      });
    } else {
      emit(GetScienceSuccessState());
    }
  }

  List<dynamic> search = [];

  void getSearch(String value) {
    emit(GetSearchLoadingState());
    DioHelper.getData(
      url:
          'https://newsapi.org/v2/top-headlines?q=$value&apiKey=00ca5eafa93a44c5b4c4b6b8594d12ee',
    ).then((value) {
      //print([1]['title'].toString());
      search = value.data['articles'];
      emit(GetSearchSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetSearchErrorState(error.toString()));
    });
  }
}
