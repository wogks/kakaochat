
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kakaochat/main.dart';

class ChatMainScreen extends StatelessWidget {
  const ChatMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ChatScreen(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        items:[
        BottomNavigationBarItem(icon: Icon(Icons.perm_identity),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.perm_identity),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.perm_identity),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.perm_identity),label: ''),

      ]
      ),
    );
  }
}