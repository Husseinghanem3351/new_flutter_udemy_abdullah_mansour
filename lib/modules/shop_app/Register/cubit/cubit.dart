import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_udemy2/models/shopApp/login_model.dart';
import 'package:new_flutter_udemy2/modules/shop_app/Register/cubit/states.dart';
import 'package:new_flutter_udemy2/shared/network/end_points.dart';
import 'package:new_flutter_udemy2/shared/network/remote/dio_helper.dart';

import '../../../../shared/components/constants.dart';


class ShopRegisterCubit extends Cubit<ShopRegisterState>{
  ShopRegisterCubit():super(ShopRegisterInitialState());

  static ShopRegisterCubit get(context)=> BlocProvider.of(context);

  late LoginModel registerModel;


  void  userRegister(
  context,{
     required String name,
    required String phone,
     required String password,
    required String email,}
      ){
    emit(ShopRegisterLoadingState());
    DioHelper.postData(
        url: registerUrl,
        data: {
          'name':name,
        'phone':phone,
        'email':email,
        'password':password,
        },
        ).then((value) {
        registerModel=LoginModel.fromJson(value.data);
        token=registerModel.data?.token;
        emit(ShopRegisterSuccessState(registerModel));
        }).catchError((value){
          print(value);
          emit(ShopRegisterErrorState(value.toString()));
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

//void register(context,{
//     required String name,
//     required String phone,
//     required String password,
//     required String email,
// }){
//   DioHelper.postData(
//       url: registerUrl,
//       data: {
//         'name':name,
//         'phone':phone,
//         'email':email,
//         'password':password,
//       },
//   ).then((value) {
//     pushAndReplacement(context,widget: ShopLogin());
//     emit(RegisterSuccessState());
//   }).catchError((error){
//     print(error);
//     emit(RegisterErrorState());
//   });
//   }