import 'package:flutter/material.dart';
import 'package:kakaochat/chat_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
      ),
      home: const ChatMainScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:Row(
          children: [
            Text('채팅',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.grey),),
            SizedBox(width: 8,),
            Text('오픈채팅',style: TextStyle(fontWeight:FontWeight.bold)),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.search)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.search)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.search)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.search)),
        ],
      ),
      body: ListView.builder(itemCount: 3,itemBuilder: (context, indenx){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(200),
              ),
              Image.network('https://src.hidoc.co.kr/image/lib/2021/4/28/1619598179113_0.jpg',
              width: 60,
              height: 60,
              fit: BoxFit.cover,)
            ],
          ),
        );
      }
      ),
    );
  }
}

