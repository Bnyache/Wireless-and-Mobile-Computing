import 'package:flutter/material.dart';
import 'package:food_app/screens/components/bottom_nav_bar.dart';
import 'package:food_app/screens/components/app_bar.dart';
import 'package:food_app/screens/menu/components/body.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}
