import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project_1/src/utils/themes/widget_themes/color_theme.dart';
import 'package:project_1/src/utils/themes/widget_themes/text_style.dart';

class Popular extends StatelessWidget {
  const Popular({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Popular',
            style: TTextStyle.primaryTextStyleW600_20,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
            child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 20),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              customCardInfo(),
              customCardInfo(),
              customCardInfo(),
            ],
          ),
        ))
      ],
    );
  }
}

Widget customCardInfo() => Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Card(
        color: TColorTheme.cardBackgroundColor,
        child: SizedBox(
            // height: 190,
            width: 320,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  customPersonInfo(),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Dr. Andrew is an experienced dentist with over 10 years of practice. He specializes in general dentistry and offers a range of services.',
                    style: TTextStyle.cardDescriptionTextStyle,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customStar(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: TColorTheme.buttonWhiteColor),
                        child: Text(
                          'Book',
                          style: TTextStyle.secondStyleButton_14,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ))));

Widget customPersonInfo() => SizedBox(
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/R.915a8e7097c5f3eb4ea1b4b1162c363b?rik=XxOGIjC8hHGrmA&riu=http%3a%2f%2falexandersitcity.weebly.com%2fuploads%2f2%2f5%2f4%2f5%2f25452650%2f740883674.jpg&ehk=QIkkePOHBVKrW2e1V%2fCNkDV7%2bNLBU8uOjYADTlGvrvE%3d&risl=&pid=ImgRaw&r=0'),
            radius: 25,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. Andrew',
                style: TTextStyle.cardTitleTextStyle,
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                'Dentist',
                style: TTextStyle.cardSubTitleTextStyle,
              ),
            ],
          )
        ],
      ),
    );

Widget customStar() => SizedBox(
        child: Row(
      children: [
        RatingBar.builder(
          // tapOnlyMode: true,
          ignoreGestures: true,
          itemSize: 20,
          initialRating: 4.2,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          unratedColor: TColorTheme.iconUnRatedStarColor,
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: TColorTheme.iconStarColor,
          ),
          onRatingUpdate: (rating) {
            // print(rating);
          },
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '(128)',
          style: TTextStyle.cardDescriptionTextStyle,
        )
      ],
    ));
