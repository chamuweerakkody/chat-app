import 'package:chat_app/screens/main/conversations/conversations.dart';
import 'package:chat_app/screens/main/users/users.dart';
import 'package:chat_app/utils/app_colors.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  //to store the active bottom bar index  
   int _activeIndex = 0;

   //trigger when bottom bar item is clicked 
   void onItemTapped(int i){
     setState(() {
        _activeIndex = i;
    });
   }

   //screen list
   final List<Widget> _screens = [
    Conversations(),
    Users()
   ]; 

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _screens[_activeIndex],
      bottomNavigationBar: Container(
        height: 83,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavTile(
                icon: Icons.chat_rounded,
                size: 35,
                isActive: _activeIndex == 0,
                onTap:(){
                 onItemTapped(0);
                }
              ),

            BottomNavTile(
                icon: Icons.people_rounded,
                size: 35,
                isActive: _activeIndex == 1,
                onTap:(){
                 onItemTapped(1);
                }
              ),

           
              ]
          ),
      ),
    );
  }
}

class BottomNavTile extends StatelessWidget {
  const BottomNavTile({
    super.key,
    required this.isActive,
    required  this.onTap,
    required this.icon,
    required this.size
  });

  final bool isActive;
  final Function() onTap;
  final IconData icon;
  final double size;
  

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(icon,
      size: size ,
      color:isActive? AppColors.primaryColor : AppColors.ash,
      ),
    );
  }
}