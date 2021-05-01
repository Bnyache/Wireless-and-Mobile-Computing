import 'package:flutter/material.dart';
import 'package:food_app/screens/details/details-screen.dart';
import 'package:food_app/screens/menu/components/sushi_card.dart';

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
            svgSrc: "assets/images/salmon.svg",
            title: "Salmon Nigiri",
            price: "\฿120",
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
            svgSrc: "assets/images/tuna.svg",
            title: "Maguro Nigiri",
            price: "\฿100",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ItemList2 extends StatelessWidget {
  const ItemList2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            svgSrc: "assets/images/triple.svg",
            title: "Triple Sushi Set",
            price: "\฿120",
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
            svgSrc: "assets/images/ikura.svg",
            title: "Ikura Maki",
            price: "\฿90",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ItemList3 extends StatelessWidget {
  const ItemList3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            svgSrc: "assets/images/onigiri2.svg",
            title: "Onigiri",
            price: "\฿110",
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
            svgSrc: "assets/icons/sushi.svg",
            title: "Sushi Set",
            price: "\฿540",
            press: () {},
          ),
        ],
      ),
    );
  }
}
