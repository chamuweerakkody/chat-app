import 'package:chat_app/screens/main/conversations/widgets/conversation_card.dart';
import 'package:chat_app/screens/main/conversations/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class Conversations extends StatefulWidget {
  const Conversations({super.key});

  @override
  State<Conversations> createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          HeaderWidget(),
          SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index){
                return ConversationCard();
              }, 
              separatorBuilder: (context, index) => SizedBox(height: 10), 
              itemCount: 10
              ),
          ),
          
        ],
      ));
  }
}

