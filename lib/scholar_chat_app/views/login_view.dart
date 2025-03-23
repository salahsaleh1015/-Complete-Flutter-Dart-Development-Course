import 'package:complete_flutter_dart_development_course/scholar_chat_app/views/chat_view.dart';
import 'package:complete_flutter_dart_development_course/scholar_chat_app/views/register_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../constants.dart';
import '../helper/show_snack_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
 static String id = "LoginView";

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  String? email;

  String? password;

  GlobalKey<FormState> formKey = GlobalKey();

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: Form(
            key: formKey,
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
                   onChanged: (data) {
                     email = data;
                   },
                  hint: "Enter Your Email",
                ),
                const SizedBox(
                  height: 10,
                ),
                 CustomTextField(
                   onChanged: (data) {
                     password = data;
                   },
                  hint: "Enter Your Password",
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(text: "Login", onTap: () async {
                  if (formKey.currentState!.validate()) {
                    isLoading = true;
                    setState(() {});
                    try {
                      await loginUser();
         Navigator.pushNamed(context, ChatView.id);

                    } on FirebaseAuthException catch (ex) {
                      if (ex.code == 'user-not-found') {
                        showSnackBar(context, 'user-not-found');
                      } else if (ex.code == 'wrong-password') {
                        showSnackBar(context, 'Wrong password provided for that user.');
                      }
                    } catch (ex) {
                      showSnackBar(context, 'there was an error');
                    }

                    isLoading = false;
                    setState(() {});
                  } else {}

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
        ),
      ),
    );
  }
  Future<void> loginUser() async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: password!);
  }
}
