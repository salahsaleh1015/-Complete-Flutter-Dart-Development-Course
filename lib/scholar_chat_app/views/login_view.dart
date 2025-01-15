import 'package:complete_flutter_dart_development_course/scholar_chat_app/views/register_view.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff314f6a),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: Column(
          children: [
            const Spacer(
              flex: 1,
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
            const CustomTextField(
              hint: "Enter Your Email",
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(
              hint: "Enter Your Password",
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(text: "Login", onTap: () {}),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterView()));
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(color: Color(0xff53ebd6), fontSize: 20),
                    ))
              ],
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
