import 'package:flutter/material.dart';
import 'package:maybe_app/widgets/bubble_message.dart';
import 'package:maybe_app/widgets/chat_header.dart';
import 'package:maybe_app/widgets/her_bubble_message.dart';
import 'package:maybe_app/widgets/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const ChatHeader(),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const HerBubbleMessage()
                      : const BubbleMessage();
                },
              )),
              const MessageFieldBox()
            ],
          ),
        )));
  }
}
