import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatMessageItem extends StatelessWidget {
  const ChatMessageItem(
      {Key? key, required this.isMeChatting, required this.messageBody})
      : super(key: key);

  final bool isMeChatting;
  final String messageBody;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMeChatting ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        width: MediaQuery.of(context).size.width * .55,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: isMeChatting
              ? BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                )
              : BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
        color: isMeChatting ? Colors.blue[900] : Colors.blue[50],
        ),
        margin: EdgeInsets.all(8),
        child: Text(
          messageBody,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: isMeChatting ? Colors.white : Colors.blue[900],
          ),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
