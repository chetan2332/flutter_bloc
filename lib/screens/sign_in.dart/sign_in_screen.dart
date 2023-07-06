import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In with Email'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: "Email Address",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CupertinoButton(
                color: Colors.grey,
                child: const Text("Sign In"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
