import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../shared/components/components.dart';


class LoginDesign extends StatefulWidget {
  @override
  State<LoginDesign> createState() => _LoginDesignState();
}

class _LoginDesignState extends State<LoginDesign> {
  var passwordController = TextEditingController();

  var emailController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool obscure = true;
  IconData eyeIcon = Icons.remove_red_eye;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    defaultTextBox(
                      validate: (value){
                        if(value!.isEmpty){
                          return 'email must be not empty';
                        }
                      },
                      tBController: emailController,
                      keyType: TextInputType.emailAddress,
                      labelText: 'email',
                      preIcon: const Icon(Icons.email_outlined),
                      obscure: false,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    defaultTextBox(
                      validate: (value){
                        if(value==null){
                          return 'password must be not empty';
                        }
                      },
                      tBController: passwordController,
                      keyType: TextInputType.visiblePassword,
                      labelText: 'password',
                      preIcon: const Icon(Icons.lock),
                      sufIcon: IconButton(onPressed: (){setState(() {
                        eyeIcon =
                        obscure ? Icons.visibility_off : Icons.visibility;
                        obscure = !obscure;
                      });}, icon: const Icon(Icons.visibility)),
                      obscure: obscure,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    defaultButton(
                      function: () {
                          if (formKey.currentState!.validate()) {
                            print(emailController.text);
                            print(passwordController.text);
                          }
                      },
                      text: 'login',
                      isUpperCase: false,
                    ),
                    // defaultButton(
                    //   function: () {
                    //     print(emailController.text);
                    //     print(passwordController.text);
                    //   },
                    //   text: 'ReGister',
                    //   isUpperCase: false,
                    // ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('don\'t have an account'),
                        TextButton(
                          style: const ButtonStyle(),
                          onPressed: () {},
                          child: const Text('Register Now'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
