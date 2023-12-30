import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_udemy2/models/shopApp/login_model.dart';
import 'package:new_flutter_udemy2/modules/shop_app/Shop_Login/cubit/states.dart';
import 'package:new_flutter_udemy2/shared/network/end_points.dart';
import 'package:new_flutter_udemy2/shared/network/remote/dio_helper.dart';

import '../../../../shared/components/constants.dart';


class ShopLoginCubit extends Cubit<ShopLoginState>{
  ShopLoginCubit():super(ShopLoginInitialState());

  static ShopLoginCubit get(context)=> BlocProvider.of(context);

  late LoginModel loginModel;


  void  userLogin(String email,String password){
    emit(ShopLoginLoadingState());
    DioHelper.postData(
        url: loginUrl,
        data: {
          'email':email,
          'password':password,
        },
        lang: 'en',
        ).then((value) {
        loginModel=LoginModel.fromJson(value.data);
        token=loginModel.data?.token;
        emit(ShopLoginSuccessState(loginModel));
        }).catchError((value){
          print(value);
          emit(ShopLoginErrorState(value.toString()));
        });
  }


  IconData passIcon=Icons.visibility;
  bool isPass=false;

  void changePassIcon(){
      isPass=!isPass;
      passIcon=isPass?Icons.visibility_off:Icons.visibility;
      emit(ChangeVisibilityState());
  }


}