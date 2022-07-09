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
        title: Row(
          children: [
            Text('채팅',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.grey),),
            SizedBox(width: 8,),
            Text('오픈채팅',style: TextStyle(fontWeight:FontWeight.bold)),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.search)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.bubble_chart_sharp)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.menu_rounded)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.settings)),
        ],
      ),
      body: ListView.builder(itemCount: 20,itemBuilder: (context, indenx){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network('https://src.hidoc.co.kr/image/lib/2021/4/28/1619598179113_0.jpg',
                width: 60,
                height: 60,
                fit: BoxFit.cover,),
              ),
              const SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('라라벨'),
                      SizedBox(width: 4,),
                      Text('라라벨'),
                      SizedBox(width: 4,),
                      Icon(Icons.access_alarm,size: 20,)
                    ],
                  ),
                  Row(
                    children: [
                      Text('asldkhwlk')
                    ],
                  )
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('오전 11:44',style: TextStyle(color: Colors.grey)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.redAccent,
                    ),
                    
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('33',style: TextStyle(color: Colors.white),),
                    ),
                  )
                ],
              )   
            ],

          ),
        );
      }
      ),
    );
  }
}

