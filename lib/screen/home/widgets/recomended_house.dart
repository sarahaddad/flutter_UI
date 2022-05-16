import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:renthouse/model/house_model.dart';
import 'package:renthouse/screen/detail/detail_page.dart';
import 'package:renthouse/widget/circle_icon_button.dart';

class RecommendedHouse extends StatelessWidget {
  final recommendedList = House.generateRecommended();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 340,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return DetailPage(house: recommendedList[index]);
            }));
          },
          child: Container(
              height: 300,
              width: 230,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(recommendedList[index].imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 10,
                      right: 15,
                      child: CirculeIconButton(
                        iconUrl: 'assets/icons/mark.svg',
                        color: Theme.of(context).colorScheme.secondary,
                      )),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        color: Colors.white54,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(recommendedList[index].name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(recommendedList[index].adress,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                              ],
                            ),
                            CirculeIconButton(
                              iconUrl: 'assets/icons/mark.svg',
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ],
                        ),
                      ))
                ],
              )),
        ),
        separatorBuilder: (context, index) => SizedBox(
          width: 20,
        ),
        itemCount: recommendedList.length,
      ),
    );
  }
}
