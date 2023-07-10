import 'package:chat_app/CustomUI/CustomCard.dart';
import 'package:chat_app/Model/ChatModel.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Rohit",
      isGroup: false,
      currentMessage: "Hi",
      time: "4:00",
      icon: "person.svg",
    ),
    ChatModel(
      name: "George",
      isGroup: false,
      currentMessage: "Halo",
      time: "4:02",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Group 1",
      isGroup: true,
      currentMessage: "Hi All",
      time: "3:55",
      icon: "groups.svg",
    ),
    ChatModel(
      name: "Thomas",
      isGroup: false,
      currentMessage: "Hi Rohit",
      time: "4:05",
      icon: "person.svg",
    ),
    ChatModel(
      name: "College",
      isGroup: true,
      currentMessage: "Hi friends",
      time: "4:10",
      icon: "groups.svg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
        backgroundColor: const Color(0xFF128C7E),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          chatModel: chats[index],
        ),
      ),
    );
  }
}
