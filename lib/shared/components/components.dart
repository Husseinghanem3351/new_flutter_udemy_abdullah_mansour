import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

import '../../layout/shop_app/cubit/cubit.dart';
import '../../modules/news_app/web_view/web_view_Screen.dart';
import '../App_cubit/cubit.dart';

Widget defaultButton({
  double width = double.infinity,
  Color buttonColor = Colors.blue,
  Color textColor = Colors.white,
  required Function function,
  required String text,
  bool isUpperCase = false,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: buttonColor,
      ),
      width: width,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            fontSize: 20,
            color: textColor,
          ),
        ),
      ),
    );

Widget defaultTextBox({
  required TextEditingController tBController,
  required TextInputType keyType,
  Function()? onTap,
  required String labelText,
  required Icon preIcon,
  Widget? sufIcon,
  Function(String value)? onFieldSubmitted,
  required bool obscure,
  InputBorder Bborder = const OutlineInputBorder(),
  required String? Function(String?)? validate,
  bool onlyRead = false,
  InputBorder? enableBorder,
  Function(String value)? onChange,
}) =>
    TextFormField(
      controller: tBController,
      keyboardType: keyType,
      onFieldSubmitted: (String value) {
        if (onFieldSubmitted != null) {
          onFieldSubmitted(value);
        }
      },
      onChanged: (String value) {
        if (onChange != null) {
          onChange(value);
        }
      },
// onChanged: (value) => print(value),
      validator: validate,
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      obscureText: obscure,
      decoration: InputDecoration(
        border: Bborder,
        hintText: labelText,
        prefixIcon: preIcon,
        enabledBorder: enableBorder,
        suffixIcon: sufIcon,
        contentPadding: EdgeInsets.symmetric(
            horizontal: 16.0, vertical: sufIcon != null ? 16.0 : 12.0),
      ),
      readOnly: onlyRead,
    );

Widget buildTaskItem({
  required String time,
  required String title,
  required String date,
  required int id,
  required BuildContext context,
  Widget? doneIcon,
  required IconData archiveIcon,
  required Function archiveButton,
}) =>
    Dismissible(
      key: Key('$id'),
      onDismissed: (direction) {
        TodoCubit.get(context).deleteData(id);
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 35,
              child: Text(
                time,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    date,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            doneIcon ?? const Text(''),
            IconButton(
              onPressed: () {
                archiveButton();
              },
              icon: Icon(archiveIcon),
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );

Widget buildArticleItem(article, context) => InkWell(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      '${article['urlToImage']}',
                    ),
                  )),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: SizedBox(
                height: 120,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        '${article['title']}',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Text(
                      '${article['publishedAt']}',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        navigateTo(
          context,
          widget: WebViewScreen(article['url']),
        );
      },
    );

Widget myDivider() => Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        width: double.infinity,
        height: 1,
        color: Colors.grey[300],
      ),
    );

Widget articleBuilder(list, context, {isSearch = false}) => ConditionalBuilder(
      condition: list.isNotEmpty,
      builder: (context1) {
        return ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return buildArticleItem(list[index], context1);
            },
            separatorBuilder: (context, index) => myDivider(),
            itemCount: list.length);
      },
      fallback: (context) {
        return isSearch
            ? Container()
            : const Center(child: CircularProgressIndicator());
      },
    );

Future navigateTo(context, {required widget}) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

Future? pushAndReplacement(context, {required widget}) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) => false,
    );

Widget defaultTextButton({
  required String text,
  required Function() function,
}) =>
    TextButton(
      onPressed: () {
        function();
      },
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
    );

// Future<bool?> Toast({
//   required String message,
//   required Toast? toast,
// }){
//   return Fluttertoast.showToast(
//       msg: message,
//       toastLength: ,
//       gravity: ToastGravity.BOTTOM,
//       timeInSecForIosWeb: 1,
//       backgroundColor: Colors.redAccent,
//       textColor: Colors.white,
//       fontSize: 16.0
//   );
// }

//  void showMsg(
// {
//   required String msg,
//   required ToastStates state,

// }) => Fluttertoast.showToast(
// msg: msg,
// toastLength:Toast.LENGTH_LONG,
// gravity: ToastGravity.BOTTOM,
// timeInSecForIosWeb: 5,
// backgroundColor: toastColor(state),
// textColor: Colors.white,
// fontSize: 16.0
// );

// enum ToastStates { error, success, warning, }

// Color toastColor(ToastStates state){
//   if(state  == ToastStates.error){
//     return Colors.red;
//   }
//   else if(state  == ToastStates.warning){
//     return Colors.orangeAccent;
//   }
//   else {
//     return Colors.blue;
//   }
// }

void popTo(context) {
  Navigator.pop(context);
}

bool isInCart(int id, context) {
  if (ShopCubit.get(context).homeModel!.data!.products[id].inCart) {
    return true;
  } else {
    return false;
  }
}
