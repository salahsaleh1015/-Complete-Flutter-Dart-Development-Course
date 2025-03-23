
import 'package:complete_flutter_dart_development_course/scholar_chat_app/constants.dart';
import 'package:flutter/material.dart';
class ChatView extends StatelessWidget {
  const ChatView({super.key});


  static String id = 'ChatView';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar:  AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text("Scholar Chat",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(

              itemBuilder: (context, index)=> const Align(
                alignment: Alignment.topLeft,
                child: ChatBubble(),
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.all(32.0),

          child: TextField(
            decoration: InputDecoration(
              suffixIcon: const Icon(Icons.send,color: kPrimaryColor,),
              border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(width: 0,color: kPrimaryColor),
              )
            ),
          ),
          )
        ],
      ),
    );
  }
}

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
