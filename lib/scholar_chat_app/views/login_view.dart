import 'package:complete_flutter_dart_development_course/scholar_chat_app/views/register_view.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
 static String id = "LoginView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Image.asset("assets/images/scholar.png"),
            const Text(
              "Scholar Chat",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "Pacifico"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
             CustomTextField(
              hint: "Enter Your Email",
            ),
            const SizedBox(
              height: 10,
            ),
             CustomTextField(
              hint: "Enter Your Password",
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(text: "Login", onTap: () {
              //Navigator.pushNamed(context, RegisterView.id);
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RegisterView.id);
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(color: Color(0xff53ebd6), fontSize: 20),
                    ))
              ],
            ),

          ],
        ),
      ),
    );
  }
}
