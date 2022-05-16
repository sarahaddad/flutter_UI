import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Container(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon:Icon(Icons.menu),),
              CircleAvatar(

                backgroundImage: AssetImage('assets/images/avatar.jpeg'),
              ),


            ],
          ),
        ),
      ),
    );
  }

  @override

  Size get preferredSize => Size.fromHeight(50);


}
