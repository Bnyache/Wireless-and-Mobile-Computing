import 'package:flutter/material.dart';
import 'package:food_app/screens/components/bottom_nav_bar.dart';
import 'package:food_app/screens/components/app_bar.dart';


class orderComplete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFC61F),
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 160.0,
                              ),
                              Image.asset('assets/images/cook.png', height: 200, width: 200, alignment: Alignment.center),
                              Text('\n Yor Order is Proceeding...', style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    )
                ],
              ),
            ),
        );
    }
}


