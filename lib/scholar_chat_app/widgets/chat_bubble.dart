




import 'package:flutter/material.dart';

import '../constants.dart';



class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key, required this.message,
  });
final String message;
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
      child:  Text(message,style: const TextStyle(color: Colors.white),),);
  }
}