import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              const Text("Welcome",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
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
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      style: TextButton.styleFrom(
                          minimumSize: const Size(200, 60)),
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
