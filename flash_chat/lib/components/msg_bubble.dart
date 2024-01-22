import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';

class MsgBubble extends StatelessWidget {
  final String text;
  final String sender;
  final bool isMe;

  const MsgBubble({super.key, required this.text, required this.sender, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: const TextStyle(fontSize: 12.0, color: Colors.black54),
          ),
          Material(
            borderRadius: isMe ? kIsMe : kOtherUsers,
            elevation: 5.0,
            color: isMe ? Colors.lightBlueAccent : Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0), // pixels
              child: Text(
                text,
                style: TextStyle(color: isMe ? Colors.white : Colors.black54, fontSize: 15.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
