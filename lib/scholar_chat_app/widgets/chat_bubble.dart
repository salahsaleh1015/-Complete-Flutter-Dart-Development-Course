




import 'package:flutter/material.dart';

import '../../notes_app/constants.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      child: const Text("Hello World ",style: TextStyle(color: Colors.white),),);
  }
}