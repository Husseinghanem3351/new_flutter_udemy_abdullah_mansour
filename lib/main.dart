import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_udemy2/layout/shop_app/Shop_Layout.dart';
import 'package:new_flutter_udemy2/layout/shop_app/cubit/cubit.dart';
import 'package:new_flutter_udemy2/modules/basics/home/home_screen.dart';
import 'package:new_flutter_udemy2/modules/shop_app/Shop_Login/Shop_Login.dart';
import 'package:new_flutter_udemy2/modules/shop_app/on_boarding/on_boarding.dart';
import 'package:new_flutter_udemy2/nativeCode.dart';
import 'package:new_flutter_udemy2/responsive%20and%20adaptive/Desktop.dart';
import 'package:new_flutter_udemy2/responsive%20and%20adaptive/constant.dart';
import 'package:new_flutter_udemy2/responsive%20and%20adaptive/mobile.dart';
import 'package:new_flutter_udemy2/shared/App_cubit/cubit.dart';
import 'package:new_flutter_udemy2/shared/App_cubit/states.dart';
import 'package:new_flutter_udemy2/shared/bloc_observer.dart';
import 'package:new_flutter_udemy2/shared/network/local/cache_helper.dart';
import 'package:new_flutter_udemy2/shared/network/remote/dio_helper.dart';
import 'package:new_flutter_udemy2/shared/styles/themes.dart';
import 'layout/News_layout/News_layout.dart';
import 'layout/News_layout/cubit/cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();
  late Widget widget;
  bool? isDark = CacheHelper.getData(key: 'isDark');
  bool? isOnBoarding = CacheHelper.getData(key: 'isOnBoarding');
  String? token = CacheHelper.getData(key: 'token');
  if (kDebugMode) {
    print(token);
  }

  if (isOnBoarding != null) {
    if (token != null) {
      widget = const Shop_Layout();
    } else {
      widget = ShopLogin();
    }
  } else {
    widget = const OnBoarding();
  }
  runApp(MyApp(
    startWidget: widget,
    isDark: isDark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key,  required this.isDark, required this.startWidget}) : super(key: key);

  final bool? isDark;
  final Widget startWidget;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TodoCubit()
            ..changeDarkMode(
              fromShared: isDark,
            ),
        ),
        BlocProvider(
            create: (context) => NewsCubit()
              ..getScience()
              ..getSports()
              ..getBusiness()),
        BlocProvider(
            create: (context) => ShopCubit()
              ..getHomeData()
              ..getCategoriesData()
              ..getFavorites()
              ..getSearchData('')
              ..getCart()),
      ],
      child: BlocConsumer<TodoCubit, AppStates>(
        builder: (context, state) => MaterialApp(

          debugShowCheckedModeBanner: false,
          home:  LayoutBuilder(
            builder: (context, constraints) {
              getOs();
              if(constraints.maxWidth>560) {
                return const DesktopScreen();
              }
              return const MediaQuery(
                data: MediaQueryData(
                  textScaler: TextScaler.linear(.8),
                ),
                  child: MobileScreen());
              },


          ),
        ),
        listener: (context, state) {},
      ),
    );
  }
}

// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
//
// Future<void> main() async {
//   final url = Uri.parse('https://b9ol14x2.api.sanity.io/v2021-10-21/data/query/production?query=*%5B_type%20%3D%3D%20%22category%22%5D%7Btitle%7D');
//   final response = await http.get(url);
//
//   final data = jsonDecode(response.body);
//
//   print(data);
// }
