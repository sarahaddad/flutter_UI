import 'package:flutter/material.dart';
import 'package:renthouse/model/house_model.dart';
import 'package:renthouse/widget/circle_icon_button.dart';

class DetailAppBar extends StatelessWidget {
  final House house;
  const DetailAppBar({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: [
          Image.asset(house.imageUrl,
          fit: BoxFit.cover,
          height: double.infinity,
          ),
          SafeArea(child:
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: CirculeIconButton(color: Colors.white70,iconUrl: ('assets/icons/arrow.svg'),
                  ),
                ),
                CirculeIconButton(color: Theme.of(context).colorScheme.secondary,iconUrl: ('assets/icons/mark.svg'),
                ),
              ],
            ),
          )
          )

        ],
      ),
    );
  }
}
