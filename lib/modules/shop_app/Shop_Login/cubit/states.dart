
import 'package:new_flutter_udemy2/models/shopApp/login_model.dart';

abstract class ShopLoginState{}

class ShopLoginInitialState extends ShopLoginState{}

class ShopLoginLoadingState extends ShopLoginState{}

class ShopLoginErrorState extends ShopLoginState{
  String error;
  ShopLoginErrorState(this.error);
}

class ShopLoginSuccessState extends ShopLoginState{
 late final LoginModel loginModel;

 ShopLoginSuccessState(this.loginModel);
}

class ChangeVisibilityState extends ShopLoginState{}

class RegisterSuccessState extends ShopLoginState{}

class RegisterErrorState extends ShopLoginState{}