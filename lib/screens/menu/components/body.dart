import 'package:flutter/material.dart';
import 'package:food_app/screens/components/search_box.dart';
import 'package:food_app/screens/menu/components/category_list.dart';
import 'package:food_app/screens/menu/components/sushi-list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          CategoryList(),
          ItemList(),
          ItemList2(),
          ItemList3(),
        ],
      ),
    );
  }
}
