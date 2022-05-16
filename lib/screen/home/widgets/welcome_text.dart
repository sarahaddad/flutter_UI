import 'package:flutter/material.dart';

class WelcomeInput extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hello Sarah',style:
            Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16,fontWeight: FontWeight.bold) ,),
          SizedBox(height: 8,),
          Text('Find Your Sweat Home',style:
          Theme.of(context).textTheme.headline1!.copyWith(fontSize: 20,fontWeight: FontWeight.bold) ,),

        ],
      ),
    );
  }
}
