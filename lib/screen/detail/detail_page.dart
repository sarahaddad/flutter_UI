import 'package:flutter/material.dart';
import 'package:renthouse/model/house_model.dart';
import 'package:renthouse/screen/detail/widgets/content_page.dart';
import 'package:renthouse/screen/detail/widgets/detail_app_bar.dart';
import 'package:renthouse/screen/detail/widgets/house_info.dart';

class DetailPage extends StatelessWidget {
  final House house;
  const DetailPage({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(house: house),
            SizedBox(height: 20,),
            ContentPage(house: house),
            SizedBox(height: 20,),
            HouseInfo(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Container(
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),

                  ),
                    primary: Theme.of(context).primaryColor,),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text('Book Now',
                    style:TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )),
                  )

              ),


),
            ),
          ],
        ),
      ),
    );
  }
}
