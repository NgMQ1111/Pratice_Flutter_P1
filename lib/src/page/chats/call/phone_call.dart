import 'package:flutter/material.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class PhoneCall extends StatefulWidget {
  const PhoneCall({super.key});

  @override
  State<PhoneCall> createState() => _PhoneCallState();
}

class _PhoneCallState extends State<PhoneCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Dr. Andrew',
          style: TTextStyle.textStyleAppBar,
        ),
        backgroundColor: TColorTheme.lightBackgroundColor,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              'https://th.bing.com/th/id/R.915a8e7097c5f3eb4ea1b4b1162c363b?rik=XxOGIjC8hHGrmA&riu=http%3a%2f%2falexandersitcity.weebly.com%2fuploads%2f2%2f5%2f4%2f5%2f25452650%2f740883674.jpg&ehk=QIkkePOHBVKrW2e1V%2fCNkDV7%2bNLBU8uOjYADTlGvrvE%3d&risl=&pid=ImgRaw&r=0',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 40,
            right: 0,
            left: 0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(30),
                shape: const CircleBorder(),
                backgroundColor: TColorTheme.backGroundRed,
              ),
              onPressed: () => Navigator.of(context).pop(),
              child: const Icon(
                Icons.phone,
                size: 30,
              ),
            ),
          ),
          Positioned(
            right: 20,
            bottom: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://th.bing.com/th/id/OIP.GaoHDSRd4FTZWa0LcF5_aAHaFW?pid=ImgDet&rs=1',
                fit: BoxFit.cover,
                height: 150,
                width: 150,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Row(
              children: [
                Icon(
                  Icons.circle_rounded,
                  size: 15,
                  color: TColorTheme.backGroundRed,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '12:45',
                  style: TTextStyle.messTextStyle_18,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
