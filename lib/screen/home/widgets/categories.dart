import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

final categories = [
  'Top Recommended',
  'Top Recommended',
  'Top Recommended',
  'Top Recommended'
];
int currentSelected=0;
class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(

      alignment:Alignment.center ,
      padding: EdgeInsets.symmetric(horizontal: 20),

      height: 35,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                setState(() {
                currentSelected=index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide (
                      color: currentSelected==index ?Theme.of(context).primaryColor: Colors.transparent,
                      width: 3,
                    ),
                  )
                ),

                  child: Text(categories[index],
                style: TextStyle(
                  color: currentSelected==index ?Theme.of(context).primaryColor:Theme.of(context).textTheme.bodyText1!.color,
                  fontWeight: currentSelected==index ? FontWeight.bold :FontWeight.normal,
                  fontSize: currentSelected ==index? 16:14,
                ),
              )),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 15,
            );
          },
          itemCount: categories.length),
    );
  }
}
