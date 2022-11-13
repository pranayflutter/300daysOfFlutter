import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              Text("Welcome $name",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter User Name",
                        labelText: "User Name",
                        labelStyle: TextStyle(fontSize: 30.0),
                      ),
                      onChanged: ((value) {
                        name = value;
                        setState(() {});
                      }),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                        labelStyle: TextStyle(fontSize: 30.0),
                      ),
                      obscureText: true,
                      obscuringCharacter: "*",
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),

                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 2),
                        height: 60,
                        width: changeButton ? 100 : 200,
                        //color: Colors.green,
                        alignment: Alignment.center,

                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 100 : 30)),

                        child: changeButton
                            ? const Icon(Icons.done, color: Colors.white)
                            : const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                      ),
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   style: TextButton.styleFrom(
                    //       minimumSize: const Size(200, 60)),
                    //   child: const Text(
                    //     "Login",
                    //     style: TextStyle(fontSize: 20),
                    //   ),
                    // )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
