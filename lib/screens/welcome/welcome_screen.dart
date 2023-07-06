import 'package:connectivity/screens/sign_in.dart/sign_in_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
              height: 60,
            ),
            const Text(
              "Example",
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
              ),
            ),
            SizedBox(
              height: 200,
              child: Column(
                children: [
                  CupertinoButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      );
                    },
                    child: const Text("Sign In with email"),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  CupertinoButton(
                    color: Colors.grey,
                    child: const Text("Sign In with google"),
                    onPressed: () {},
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
