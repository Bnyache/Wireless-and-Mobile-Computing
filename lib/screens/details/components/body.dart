import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/details/components/item_image.dart';
import 'package:food_app/screens/details/components/order_button.dart';
import 'package:food_app/screens/details/components/title_price_rating.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemImage(
          imgSrc: "assets/images/setsushi.png",
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopeName(name: "Orderoar"),
          TitlePriceRating(
            name: "Sushi Set",
            numOfReviews: 24,
            rating: 4,
            price: 540,
            onRatingChanged: (value) {},
          ),
          Text(
            "This is our popular and recommendation menu. We have combined some of the most popular sushi into menus. The menus 19 pieces. For two people our most popular menu is the Kyoto which provides 30 pieces of varied sushi types "
                "including the tamakgoyaki, nigiri, hosomaki, futomaki and sushi in addition to a variety of fish.",
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(height: size.height * 0.1),
          // Free space  10% of total height
          OrderButton(
            size: size,
            press: () {
              showConfirmDialog(context);
            },
          )
        ],
      ),
    );
  }

  Row shopeName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}

showConfirmDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
    onPressed:  () {
      Navigator.pop(context, 'Cancel!');
    },
  );
  Widget yesButton = FlatButton(
    child: Text("Yes"),
    onPressed:  () {
      Navigator.pop(context, 'Added to basket!');
    },
  );

  // set up the confirmDialog
  AlertDialog alert = AlertDialog(
    title: Text("Add to basket"),
    content: Text("Would you like add Sushi Set to your basket?"),
    actions: [
      cancelButton,
      yesButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
