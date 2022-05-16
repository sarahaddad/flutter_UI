import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(

        children: [
          Row(
            children: [
              menuInfo(
                  image: 'assets/icons/bedroom.svg',
                  content: '5 Master bedrooms'),
              SizedBox(
                width: 20,
              ),
              menuInfo(
                  image: 'assets/icons/bathroom.svg',
                  content: '2 bathroom \n2 toilet'),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              menuInfo(
                  image: 'assets/icons/kitchen.svg',
                  content: '2 kitchen \n120 Sqr '),
              SizedBox(
                width: 20,
              ),
              menuInfo(
                  image: 'assets/icons/parking.svg',
                  content: '2 parking \n120 Sqr '),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Home Construction & Real Estate. Panoramic Sea and Mountain Views. Moon light Home Construction & Real Estate. Open 7 Days A Week. ',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          )

        ],

      ),

    );
  }
}

class menuInfo extends StatelessWidget {
  final String image;
  final String content;

  menuInfo({required this.image, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          children: [
            SvgPicture.asset(image),
            SizedBox(
              width: 10,
            ),
            Text(
              content,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
