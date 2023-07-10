import 'package:chat_app/Pages/ChatPage.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomescreenState createState() => _HomescreenState();
}

// ignore: camel_case_types
class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp Clone"),
        backgroundColor: const Color(0xFF075E54),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              // <-- Fix: Provide the implementation for the itemBuilder function
              return [
                PopupMenuItem(child: Text("New Group"), value: "New Group"),
                PopupMenuItem(
                    child: Text("New Broadcast"), value: "New Broadcast"),
                PopupMenuItem(
                    child: Text("WhatsApp Web"), value: "WhatsApp Web"),
                PopupMenuItem(
                    child: Text("Starred Messages"), value: "Starred Messages"),
                PopupMenuItem(child: Text("Settings"), value: "Settings"),
              ];
            },
          ),
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(text: "Chats"),
            Tab(text: "Status"),
            Tab(
              text: "Calls",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [Text("Camera"), ChatPage(), Text("Status"), Text("Calls")],
      ),
    );
  }
}
