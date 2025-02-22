import 'package:complete_flutter_dart_development_course/scholar_chat_app/views/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterView extends StatefulWidget {
  RegisterView({super.key});

  static String id = "RegisterView";

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
          child: SingleChildScrollView(
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
                  CustomTextField(
                    hint: "Enter Your Email",
                    onChanged: (data) {
                      email = data;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    hint: "Enter Your Password",
                    onChanged: (data) {
                      password = data;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                      text: "Register",
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          isLoading = true;
                          setState(() {});
                          try {
                            await registerUser();

                            showSnackBar(context, 'success');
                          } on FirebaseAuthException catch (ex) {
                            if (ex.code == 'weak-password') {
                              showSnackBar(context, 'weak password');
                            } else if (ex.code == 'email-already-in-use') {
                              showSnackBar(context, 'email already exists');
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
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  Future<void> registerUser() async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
