import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/call_screen.dart';
import 'package:whatsapp_clone/screens/camera_screen.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';

class WhatsappUi extends StatefulWidget {
  const WhatsappUi({Key? key}) : super(key: key);

  @override
  State<WhatsappUi> createState() => _WhatsappUiState();
}

class _WhatsappUiState extends State<WhatsappUi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "FictionalChat",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: const Color(0xff075e54),
          actions: const [
            Icon(Icons.search),
            Icon(Icons.more_vert),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          const CameraScreen(),
          ChatScreen(),
          const StatusScreen(),
          const CallScreen(),
        ]),
      ),
    );
  }
}
