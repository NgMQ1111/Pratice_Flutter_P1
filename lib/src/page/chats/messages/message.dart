import 'package:flutter/material.dart';
import 'package:project_1/src/page/chats/messages/conversation.dart';
import 'package:project_1/src/page/chats/messages/element_chat.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Messages',
              style: TTextStyle.primaryTextStyleW600_22,
            ),
            const SizedBox(
                height: 20,
              ),
            GestureDetector(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Conversation()));
            }, child: const ElementChat(distance: 10,)),
            GestureDetector(onTap: (){}, child: const ElementChat(distance: 10,)),
            GestureDetector(onTap: (){}, child: const ElementChat(distance: 10,)),
            GestureDetector(onTap: (){}, child: const ElementChat(distance: 10,)),
            GestureDetector(onTap: (){}, child: const ElementChat(distance: 10,)),
            GestureDetector(onTap: (){}, child: const ElementChat(distance: 10,)),

          ],
        ));
  }
}
