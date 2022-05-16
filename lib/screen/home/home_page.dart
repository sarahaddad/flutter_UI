import 'package:flutter/material.dart';
import 'package:renthouse/screen/home/widgets/best_offer.dart';
import 'package:renthouse/screen/home/widgets/bottom_navigation_bar.dart';
import 'package:renthouse/screen/home/widgets/categories.dart';
import 'package:renthouse/screen/home/widgets/custom_app_bar.dart';
import 'package:renthouse/screen/home/widgets/recomended_house.dart';

import 'widgets/search_bar.dart';
import 'widgets/welcome_text.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeInput(),
            SearchBar(),
            Categories(),
            RecommendedHouse(),
            BestOffer(),


          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
