import 'package:flutter/material.dart';
import 'package:food_app/screens/details/details-screen.dart';
import 'package:food_app/screens/home/components/item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            svgSrc: "assets/icons/sushi.svg",
            title: "Sushi Set",
            price: "\฿540",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen();
                  },
                ),
              );
            },
          ),
          ItemCard(
            svgSrc: "assets/icons/ramen.svg",
            title: "Ramen Champion",
            price: "\฿180",
            press: () {},
          ),
          ItemCard(
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Local Beer",
            price: "\฿80",
            press: () {},
          )
        ],
      ),
    );
  }
}
