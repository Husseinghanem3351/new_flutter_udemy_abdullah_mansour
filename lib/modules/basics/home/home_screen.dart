import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        // bottomNavigationBar: Text('hussein'),
        //bottomSheet: Text('ghanem'),
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: const Icon(
            Icons.menu,
          ),
          title: const Text('First App'),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                if (kDebugMode) {
                  if (kDebugMode) {
                    print('notification clicked');
                  }
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                if (kDebugMode) {
                  print('search clicked');
                }
              },
            ),
          ],
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.all(
                    Radius.circular(20),
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    const Image(
                      image: AssetImage(
                        'assets/images/onBoard.jpeg',
                      ),
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.7),
                      width: 200,
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 10.0,
                      ),
                      child: Text(
                        'Flower',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 200,
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.cyan,
                ),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Colors.red,
                  child: Image(
                    image: AssetImage(
                      'assets/images/onBoard.jpeg',
                    ),
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),

                ),
              ),
            ),
          ],
        ));
  }
}
