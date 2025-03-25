import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complete_flutter_dart_development_course/scholar_chat_app/constants.dart';
import 'package:complete_flutter_dart_development_course/scholar_chat_app/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';
class ChatView extends StatelessWidget {
   ChatView({super.key});

  static String id = 'ChatView';

  CollectionReference message = FirebaseFirestore.instance.collection('messages');
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  FutureBuilder<QuerySnapshot>(
      future: message.get(),
      builder:(context,snapshot){
        if(snapshot.hasData){
          print(snapshot.data!.docs[0]['message']);
          return Scaffold(
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
                    controller: messageController,
                    onSubmitted: (data){
                      message.add({
                        'message':data
                      });
                      messageController.clear();
                    },
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
        }else{
          return const Scaffold(body: Center(child: Text("Loading..."),));
        }
      }
    );
  }
}

