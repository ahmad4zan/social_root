import '/constants.dart';
import '../../models/ChatMessage.dart';
import '../components/message.dart';
import '../components/text_message.dart';
import 'package:flutter/material.dart';

import 'chat_input_fields.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int msgShow = 1;
  @override
  void initState() {
    super.initState();
  }

  //const Body({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: ListView.builder(
            itemCount: msgShow <= demeChatMessages.length ? msgShow : demeChatMessages.length,
            itemBuilder: (context, index) =>
                Message(message: demeChatMessages[index]),
          ),
        )),
        ChatInputField(
          onTap: () {
            setState(() {
              msgShow++;
            });
          },
        )
      ],
    );
  }
}
