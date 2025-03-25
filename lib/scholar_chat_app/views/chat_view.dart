import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complete_flutter_dart_development_course/scholar_chat_app/constants.dart';
import 'package:complete_flutter_dart_development_course/scholar_chat_app/models/message_model.dart';
import 'package:complete_flutter_dart_development_course/scholar_chat_app/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  ChatView({super.key});

  static String id = 'ChatView';

  CollectionReference message =
      FirebaseFirestore.instance.collection('messages');
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: message.orderBy('time').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<MessageModel> messagesList = [];
            for (int i = 0; i < snapshot.data!.docs.length; i++) {
              messagesList.add(MessageModel.fromJson(snapshot.data!.docs[i]));
            }
            return Scaffold(
              appBar: AppBar(
                backgroundColor: kPrimaryColor,
                title: const Text(
                  "Scholar Chat",
                  style: TextStyle(color: Colors.white),
                ),
                centerTitle: true,
                automaticallyImplyLeading: false,
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: messagesList.length,
                      itemBuilder: (context, index) =>  Align(
                        alignment: Alignment.topLeft,
                        child: ChatBubble(
                          message: messagesList[index].message,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: TextField(
                      controller: messageController,
                      onSubmitted: (data) {
                        message.add({'message': data,'time':DateTime.now()});
                        messageController.clear();
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter your message here..',
                          suffixIcon: const Icon(
                            Icons.send,
                            color: kPrimaryColor,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: const BorderSide(
                                width: 0, color: kPrimaryColor),
                          )),
                    ),
                  )
                ],
              ),
            );
          } else {
            return const Scaffold(
                body: Center(
              child: Text("Loading..."),
            ));
          }
        });
  }
}
