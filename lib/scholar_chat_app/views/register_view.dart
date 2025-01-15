import 'package:complete_flutter_dart_development_course/scholar_chat_app/views/login_view.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  static String id = "RegisterView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: SingleChildScrollView(
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
                    "Register",
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
              CustomButton(text: "Register", onTap: () {}),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "already have an account?",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "login",
                        style:
                            TextStyle(color: Color(0xff53ebd6), fontSize: 20),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
