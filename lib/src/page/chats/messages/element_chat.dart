import 'package:flutter/material.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class ElementChat extends StatefulWidget {
  const ElementChat({required this.distance, super.key});

  final double distance;

  @override
  State<ElementChat> createState() => _ElementChatState();
}

class _ElementChatState extends State<ElementChat> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
        height: 100,
        child: Card(
          shadowColor: Colors.transparent,
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://th.bing.com/th/id/R.915a8e7097c5f3eb4ea1b4b1162c363b?rik=XxOGIjC8hHGrmA&riu=http%3a%2f%2falexandersitcity.weebly.com%2fuploads%2f2%2f5%2f4%2f5%2f25452650%2f740883674.jpg&ehk=QIkkePOHBVKrW2e1V%2fCNkDV7%2bNLBU8uOjYADTlGvrvE%3d&risl=&pid=ImgRaw&r=0'),
                radius: 40,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: customTitle(),
              ),
              unreadDot(isRead: false),
              actionCamera()
            ],
          ),
        )),
        SizedBox(height: widget.distance,)
      ],
    );
  }
}

Widget customTitle() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Dr. Andrew',
          style: TTextStyle.primaryTextStyleW600_22,
        ),
        Text(
          'Hi brother, sorry for late. Hi brother, sorry for late. Hi brother, sorry for late...',
          style: TTextStyle.primaryTextStyle50,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );

Widget unreadDot({required bool isRead}) => SizedBox(
      width: 50,
      child: isRead
          ? null
          : const Icon(
              Icons.circle,
              size: 15,
            ),
    );

Widget actionCamera() => SizedBox(
      width: 30,
      child: Icon(
        Icons.camera_alt_outlined,
        size: 32,
        color: TColorTheme.textPrimaryColor50,
      ),
    );
