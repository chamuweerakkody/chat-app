import 'package:chat_app/screens/main/users/widgets/user_card.dart';
import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        itemBuilder: (context, index){
          return UserCard();
        }, 
        separatorBuilder: (context, index) => SizedBox(height: 10), 
        itemCount: 10
        ),
        );
  }
}