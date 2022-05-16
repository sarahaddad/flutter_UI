import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:renthouse/model/house_model.dart';

class ContentPage extends StatelessWidget {
  final House house;
  const ContentPage({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            house.name,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 18, fontWeight: FontWeight.bold),

          ),
          SizedBox(height: 10,),
          Text(house.adress,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 16,)),
          SizedBox(height: 10,),
          Text(house.Size,style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontSize: 16,)),
          SizedBox(height: 5,),

          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: house.coast,
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: 'for month',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 16, )),
            ]),
          ),
        ],
      ),
    );
  }
}
