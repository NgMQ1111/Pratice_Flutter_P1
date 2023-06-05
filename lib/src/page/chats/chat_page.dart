import 'package:flutter/material.dart';
import 'package:project_1/src/page/chats/active.dart';
import 'package:project_1/src/page/chats/messages/message.dart';
import 'package:project_1/src/page/home/widgets/search.dart';
import 'package:project_1/src/utils/appbar_back.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarBack('Messages'),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Search(),
              ),
              const SizedBox(
                height: 20,
              ),
              const ActiveUser(),
              const SizedBox(
                height: 20,
              ),
              const MessagesPage()
            ],
          ),
        ));
  }
}
