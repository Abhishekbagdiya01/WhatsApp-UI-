import 'package:flutter/material.dart';

import '../models/dummy_chat.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummayData.length,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 100,
          width: 100,
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(dummayData[index].image),
            ),
            title: Text(
              dummayData[index].name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              dummayData[index].message,
              style: TextStyle(fontSize: 18),
            ),
            trailing: Text(dummayData[index].time),
          ),
        );
      },
    );
  }
}
