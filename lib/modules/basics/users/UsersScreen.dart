import 'package:flutter/material.dart';

import '../../../models/user/user_model.dart';


class UsersScreen extends StatelessWidget {
  List<UsersModel> users = [
    UsersModel(id: 1, name: 'Hussein Ghanem', phone: '0931890899'),
    UsersModel(id: 2, name: 'Ibrahim Ghanem', phone: '0932609319'),
    UsersModel(id: 3, name: 'Laith Ghanem', phone: '0931890888'),
    UsersModel(id: 4, name: 'Maen Ghanem', phone: '0930094546'),
    UsersModel(id: 5, name: 'Nada Ismael', phone: '0999351461'),
    UsersModel(id: 6, name: 'Hamza Ghanem', phone: '0931890899'),
    UsersModel(id: 7, name: 'Mohammad badr', phone: '0931890899'),
    UsersModel(id: 8, name: 'Ja-afar Mohammad', phone: '0931890899'),
  ];

  UsersScreen({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(start: 20),
          child: Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey[300],
          ),
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UsersModel user) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              child: Text(
                '${user.id}',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    user.phone,
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );

  // 1. build item
  // 2. build list
  // 3. add item to list
  // Widget buildUserItem(UsersModel user) => Padding(
  //       padding: const EdgeInsets.all(20.0),
  //       child: Row(
  //         children: [
  //           CircleAvatar(
  //             radius: 25,
  //             child: Text(
  //               '${user.id}',
  //               style: const TextStyle(
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: 25,
  //               ),
  //             ),
  //           ),
  //           const SizedBox(width: 20),
  //           Expanded(
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               mainAxisSize: MainAxisSize.min,
  //               children: [
  //                 Text(
  //                   user.name,
  //                   maxLines: 1,
  //                   overflow: TextOverflow.ellipsis,
  //                   style: const TextStyle(
  //                     fontSize: 17,
  //                     fontWeight: FontWeight.bold,
  //                   ),
  //                 ),
  //                 const SizedBox(
  //                   height: 5,
  //                 ),
  //                 Text(
  //                   user.phone,
  //                   maxLines: 1,
  //                   overflow: TextOverflow.ellipsis,
  //                   style: const TextStyle(
  //                     color: Colors.grey,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ],
  //       ),
  //     );
}
