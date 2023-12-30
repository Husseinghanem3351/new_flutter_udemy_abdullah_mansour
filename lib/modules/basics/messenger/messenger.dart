import 'package:flutter/material.dart';

class Messenger extends StatelessWidget {
  const Messenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461'),
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
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 16,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(Icons.edit),
            ),
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.all(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: const [
                      Icon(Icons.search),
                      SizedBox(width: 10),
                      Text('Search'),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: const [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461'),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom: 2,
                                  end: 2,
                                ),
                                child: CircleAvatar(
                                  radius: 5.7,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom: 2,
                                  end: 2,
                                ),
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'hussein ghanem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 50,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: const [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461'),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom: 2,
                                  end: 2,
                                ),
                                child: CircleAvatar(
                                  radius: 5.7,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom: 2,
                                  end: 2,
                                ),
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'hussein ghanem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 50,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: const [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461'),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom: 2,
                                  end: 2,
                                ),
                                child: CircleAvatar(
                                  radius: 5.7,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom: 2,
                                  end: 2,
                                ),
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'hussein ghanem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 50,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: const [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461'),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom: 2,
                                  end: 2,
                                ),
                                child: CircleAvatar(
                                  radius: 5.7,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom: 2,
                                  end: 2,
                                ),
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'hussein ghanem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 50,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: const [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461'),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom: 2,
                                  end: 2,
                                ),
                                child: CircleAvatar(
                                  radius: 5.7,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom: 2,
                                  end: 2,
                                ),
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'hussein ghanem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 50,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: const [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461'),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom: 2,
                                  end: 2,
                                ),
                                child: CircleAvatar(
                                  radius: 5.7,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom: 2,
                                  end: 2,
                                ),
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'hussein ghanem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 50,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: const [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461'),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom: 2,
                                  end: 2,
                                ),
                                child: CircleAvatar(
                                  radius: 5.7,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom: 2,
                                  end: 2,
                                ),
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'hussein ghanem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 50,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: const [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461'),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom: 2,
                                  end: 2,
                                ),
                                child: CircleAvatar(
                                  radius: 5.7,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  bottom: 2,
                                  end: 2,
                                ),
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'hussein ghanem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hussein ghanem',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            CircleAvatar(
                              radius: 1,
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text('18:55 pm'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hussein ghanem',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            CircleAvatar(
                              radius: 1,
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text('18:55 pm'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hussein ghanem',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            CircleAvatar(
                              radius: 1,
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text('18:55 pm'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hussein ghanem',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            CircleAvatar(
                              radius: 1,
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text('18:55 pm'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hussein ghanem',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            CircleAvatar(
                              radius: 1,
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text('18:55 pm'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hussein ghanem',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            CircleAvatar(
                              radius: 1,
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text('18:55 pm'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hussein ghanem',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            CircleAvatar(
                              radius: 1,
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text('18:55 pm'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hussein ghanem',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            CircleAvatar(
                              radius: 1,
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text('18:55 pm'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hussein ghanem',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            CircleAvatar(
                              radius: 1,
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text('18:55 pm'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hussein ghanem',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            CircleAvatar(
                              radius: 1,
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text('18:55 pm'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hussein ghanem',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            CircleAvatar(
                              radius: 1,
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text('18:55 pm'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hussein ghanem',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            CircleAvatar(
                              radius: 1,
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text('18:55 pm'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hussein ghanem',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            CircleAvatar(
                              radius: 1,
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text('18:55 pm'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hussein ghanem',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            CircleAvatar(
                              radius: 1,
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text('18:55 pm'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hussein ghanem',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            CircleAvatar(
                              radius: 1,
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text('18:55 pm'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://scontent-mxp2-1.xx.fbcdn.net/v/t39.30808-6/280490887_714794906235928_6931650177220079282_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-fUVnd0mFR4AX-UvntK&_nc_ht=scontent-mxp2-1.xx&oh=00_AfASB87b0bTYEMhfSSf0QavAQA1oVQ004tptpDngOhDCFA&oe=63AD6461',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hussein ghanem',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem hello Iam hussein ghanem.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            CircleAvatar(
                              radius: 1,
                              backgroundColor: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text('18:55 pm'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
