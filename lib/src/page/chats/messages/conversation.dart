import 'package:flutter/material.dart';
import 'package:project_1/src/utils/appbar_conversation.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class Conversation extends StatefulWidget {
  const Conversation({super.key});

  @override
  State<Conversation> createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
  final message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarConversation('Dr.Andrew'),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.847,
            // color: Colors.red,
          ),
          Row(
            children: [
              Expanded(
                  child: TextFormField(
                controller: message,
                decoration: InputDecoration(
                    hintText: 'Type here ...',
                    hintStyle: TTextStyle.messTextStyle50_18,
                    fillColor: TColorTheme.cardBackgroundColorV2,
                    filled: true,
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.all(25),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.mic, color: TColorTheme.iconsColor, size: 25,),
                          const SizedBox(width: 15,),
                          Icon(Icons.send, color: TColorTheme.iconsColor, size: 25,),
                          const SizedBox(width: 20,),
                        ],
                      
                    ),
 
                    ),
              )),
            ],
          )
        ],
      ),
    );
  }
}
