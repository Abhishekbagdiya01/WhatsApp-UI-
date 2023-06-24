import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Status",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
