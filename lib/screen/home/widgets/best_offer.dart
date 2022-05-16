import 'package:flutter/material.dart';
import 'package:renthouse/model/house_model.dart';
import 'package:renthouse/widget/circle_icon_button.dart';

class BestOffer extends StatelessWidget {
  final listOfOffer = House.generateBestOffer();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Best Offer',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.bold)),
              Text('See All',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 14, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ...listOfOffer
              .map((el) => Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(08),
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 150,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: AssetImage(el.imageUrl),
                                      fit: BoxFit.cover,
                                    ))),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(el.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                SizedBox(height: 10,),
                                Text(el.adress,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                              ],
                            )
                          ],
                        ),
                        Positioned(
                          right: 0,
                            child: CirculeIconButton(
                          color: Colors.grey,
                          iconUrl: 'assets/icons/heart.svg',
                        ))
                      ],
                    ),
                  ))
              .toList()
        ],
      ),
    );
  }
}
