




import 'package:complete_flutter_dart_development_course/scholar_chat_app/views/login_view.dart';
import 'package:complete_flutter_dart_development_course/scholar_chat_app/views/register_view.dart';
import 'package:flutter/material.dart';

class ScholarChatApp extends StatelessWidget {
  const ScholarChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginView.id: (context) => const LoginView(),
        RegisterView.id: (context) =>  RegisterView(),
      },
      initialRoute: LoginView.id,
    );
  }
}
