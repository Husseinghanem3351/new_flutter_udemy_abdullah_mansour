import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          titleSpacing: 20,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: const [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg'),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Chats',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.camera_alt,
                  size: 15,
                  color: Colors.white,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                child: Icon(
                  Icons.edit,
                  size: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  padding: const EdgeInsets.all(9.0),
                  child: Row(
                    children: const [
                      Icon(Icons.search),
                      SizedBox(width: 15),
                      Text('search'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildStoryItem(),
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 20,
                    ),
                    itemCount: 10,
                  ),
                ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 20,
                  ),
                  itemCount: 10,
                ),
              ],
            ),
          ),
        ));
  }

//1. build item
//2. build list view
//3. add item to list

  //arrow function
  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: const [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg'),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  bottom: 1,
                  end: 1,
                ),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'hussein ghanem',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Expanded(
                        child: Text(
                      'hello I am hussein ghanem hello I am hussein ghanem.',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        height: 5,
                        width: 5,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Text('12:17 am'),
                  ],
                )
              ],
            ),
          )
        ],
      );
  Widget buildStoryItem() => SizedBox(
        width: 60,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg'),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 1,
                    end: 1,
                  ),
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            const Text(
              'hussein ghanem ghanem ghanem',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}
