
// ignore_for_file: file_names


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_udemy2/layout/News_layout/cubit/cubit.dart';
import 'package:new_flutter_udemy2/layout/News_layout/cubit/states.dart';
import 'package:new_flutter_udemy2/shared/components/components.dart';


import '../../modules/news_app/search/search_screen.dart';
import '../../shared/App_cubit/cubit.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<NewsCubit,NewsStates>(
        listener: (context, state){},
        builder: (context, state) {
          NewsCubit cubit =NewsCubit.get(context);
         return Scaffold(
            appBar: AppBar(
              title: Text(cubit.labels[cubit.currentIndex]),
              actions: [
                IconButton(
                  onPressed: (){
                    navigateTo(context,widget:SearchScreen() );
                  },
                  icon: const Icon(Icons.search),
                ),
                IconButton(
                  onPressed: (){
                    TodoCubit.get(context).changeDarkMode();
                  },
                  icon: const Icon(Icons.brightness_4_outlined),
                )
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,
              items: cubit.items,
              onTap: (index) {
                cubit.changeBottomNavBar(index);
              },
            ),
            body: cubit.screens[cubit.currentIndex],
          );
        },
    );
  }
}
