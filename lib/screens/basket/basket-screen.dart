import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/constants.dart';

class cartConstant {
  static int packageCount;
  static List<int> list;
}

class SummaryPage extends StatefulWidget {
  @override
  _SummaryPageState createState() => _SummaryPageState();
}

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .title
            .copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "Orde",
            style: TextStyle(color: ksecondaryColor),
          ),
          TextSpan(
            text: "roar",
            style: TextStyle(color: kPrimaryColor),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.shopping_basket),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return SummaryPage();
              },
            ),
          );
        },
      ),
    ],
  );
}

class _SummaryPageState extends State<SummaryPage> {
  final data = ['Sushi Set', 'Ramen Champion'];
  int _counter1 = 1, _counter2 = 1;
  int getPrice(int i, int priceC) {
    cartConstant.packageCount = i * priceC;
    return cartConstant.packageCount;
  }

  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        ),
        title: RichText(
          text: TextSpan(
            style: Theme.of(context)
                .textTheme
                .title
                .copyWith(fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: "Orde",
                style: TextStyle(color: ksecondaryColor),
              ),
              TextSpan(
                text: "roar",
                style: TextStyle(color: kPrimaryColor),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_basket, color: Colors.grey),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SummaryPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget> [
            Text("Basket", style: TextStyle(fontWeight: FontWeight.bold, fontSize:24)),
            Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFD3D3D3), width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    _counter1++;
                                    if (_counter1 > 5) {
                                      _counter1 = 5;
                                    }
                                  });

                                  //widget.callback();
                                },
                                child: Icon(Icons.add, color: Color(0xFFD3D3D3))),
                            Text(
                              "$_counter1",
                              style: TextStyle(fontSize: 18.0, color: Colors.grey),
                            ),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    _counter1--;
                                    if (_counter1 < 2) {
                                      _counter1 = 1;
                                    }
                                  });

                                  //widget.callback();
                                },
                                child: Icon(Icons.remove, color: Color(0xFFD3D3D3))),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/sushiset.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(35.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white70,
                                blurRadius: 5.0,
                                offset: Offset(0.0, 2.0))
                          ]),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Sushi Set",
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.0),
                        SizedBox(height: 5.0),
                        Container(
                          height: 25.0,
                          width: 120.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text("Price",
                                      style: TextStyle(
                                          color: Color(0xFFD3D3D3),
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Text(
                                      getPrice(_counter1, 540).toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.cancel,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFD3D3D3), width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    _counter2++;
                                    if (_counter2 > 5) {
                                      _counter2 = 5;
                                    }
                                  });

                                  //widget.callback();
                                },
                                child: Icon(Icons.add, color: Color(0xFFD3D3D3))),
                            Text(
                              "$_counter2",
                              style: TextStyle(fontSize: 18.0, color: Colors.grey),
                            ),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    _counter2--;
                                    if (_counter2 < 2) {
                                      _counter2 = 1;
                                    }
                                  });

                                  //widget.callback();
                                },
                                child: Icon(Icons.remove, color: Color(0xFFD3D3D3))),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/ramen.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(35.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white70,
                                blurRadius: 5.0,
                                offset: Offset(0.0, 2.0))
                          ]),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Ramen Champion",
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.0),
                        SizedBox(height: 5.0),
                        Container(
                          height: 25.0,
                          width: 120.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text("Price",
                                      style: TextStyle(
                                          color: Color(0xFFD3D3D3),
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Text(
                                      getPrice(_counter2, 180).toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.cancel,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildTotalContainer(),
    );
  }

  Widget _buildTotalContainer() {
    return Container(
      height: 220.0,
      padding: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Subtotal",
                  style: TextStyle(
                      color: Color(0xFF9BA7C6),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "1260   Baht",
                  //cartConstant.packageCount.toString(),
                  style: TextStyle(
                      color: Color(0xFF6C6D6D),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Discount",
                style: TextStyle(
                    color: Color(0xFF9BA7C6),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "0.0   Baht",
                style: TextStyle(
                    color: Color(0xFF6C6D6D),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Divider(
            height: 2.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Total",
                style: TextStyle(
                    color: Color(0xFF9BA7C6),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "1260   Baht",
                style: TextStyle(
                    color: Color(0xFF6C6D6D),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          GestureDetector(
            onTap: () {
//              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SignInPage()));
            },
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0xFFFFCA43),
                borderRadius: BorderRadius.circular(35.0),
              ),
              child: Center(
                child: Text(
                  "Pay Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SummaryPage(),
    );
  }
}