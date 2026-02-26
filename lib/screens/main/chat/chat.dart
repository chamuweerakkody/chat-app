import 'package:chat_app/screens/main/chat/widgets/chat_bubble.dart';
import 'package:chat_app/screens/main/chat/widgets/chat_header_widget.dart';
import 'package:chat_app/screens/main/chat/widgets/message_typing_widget.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ChatHeader(),
          SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ChatBubble(isSender: index%2 == 0);
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: 20),
          ),
          MessageTypingWidget(),
        ],
      )),
    );
  }
}






