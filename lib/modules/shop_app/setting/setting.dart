
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_udemy2/layout/shop_app/cubit/cubit.dart';
import 'package:new_flutter_udemy2/layout/shop_app/cubit/states.dart';
import 'package:new_flutter_udemy2/modules/shop_app/setting/update_profile.dart';
import 'package:new_flutter_udemy2/shared/App_cubit/cubit.dart';
import 'package:new_flutter_udemy2/shared/components/components.dart';
import 'package:new_flutter_udemy2/shared/styles/colors.dart';


class SettingScreen extends StatelessWidget {
   const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit,ShopLayoutState>(
      builder: (context,state) {

        return Scaffold(

            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  InkWell(
                    onTap: (){
                      navigateTo(context, widget: Profile());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          children:  [
                            Text(
                              'Profile',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const Spacer(),
                            const Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SizedBox(
                      height: 40,
                      child: Row(
                        children:  [
                          Text(
                            'Dark Mode',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const Spacer(),
                          IconButton(
                            icon:  const Icon(
                              Icons.brightness_4_outlined,
                            ),
                            onPressed: (){
                              TodoCubit.get(context).changeDarkMode();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 30,),
                  defaultButton(
                    function: () {
                      ShopCubit.get(context).signOut(context);
                    },
                    text: 'LogOut',
                    buttonColor: defaultColor,

                  ),
                ],
              ),
            )
          );
          },
      listener: (context,state){},
    );
  }

}
