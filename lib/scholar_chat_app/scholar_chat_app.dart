




import 'package:complete_flutter_dart_development_course/scholar_chat_app/views/login_view.dart';
import 'package:flutter/material.dart';

class ScholarChatApp extends StatelessWidget {
  const ScholarChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}
