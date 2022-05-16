import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: TextField(
        decoration: InputDecoration(



          border: OutlineInputBorder(

            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),

          fillColor: Colors.white,
          filled: true,
          hintText: 'Search here...',
          prefixIcon: Container(

            padding: EdgeInsets.symmetric(horizontal: 12),


            child: SvgPicture.asset('assets/icons/search.svg',)
          ),
          contentPadding: EdgeInsets.all(12),
        ),
      ),
    );
  }
}
