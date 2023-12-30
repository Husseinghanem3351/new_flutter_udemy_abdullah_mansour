import 'dart:ui';

import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.teal,
              height: double.infinity,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login with your account',
                    style:Theme.of(context).textTheme.headlineMedium
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    style: const TextStyle(
                      height: 1,
                    ),
                    decoration: const InputDecoration(
                      constraints: BoxConstraints(
                        maxHeight: 50,
                        minHeight: 50,
                      ),
                        border: OutlineInputBorder(),
                        labelText: 'EmailAddress',
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    style: const TextStyle(
                      height: 1,
                    ),
                    decoration: const InputDecoration(
                      constraints: BoxConstraints(
                        maxHeight: 50,
                        minHeight: 50,
                      ),

                        border: OutlineInputBorder(), labelText: 'Password'),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 40,
                        color: Colors.teal,
                        child: MaterialButton(
                          onPressed: () {},
                          child: const Text('Login',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ),
                      )),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Container(
                        height: 40,
                        color: Colors.blue,
                        child: MaterialButton(
                          onPressed: () {},
                          child: const Text(
                            'Register',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
