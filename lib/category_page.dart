import 'package:flutter/material.dart';
import 'product_page.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.search,
                    size: 35.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(
                    Icons.tune,
                    size: 35.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'What\'s the right \ndeal for you?',
                style: TextStyle(
                    fontSize: 30.0, fontFamily: 'Sriracha', height: 1.2),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 50.0,
              child: ScrollConfiguration(
                  behavior: MyBehaviour(),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Box(),
                      CategoryCard(
                        image: 'images/phone_ico.png',
                        name: 'Phones',
                      ),
                      Box(),
                      CategoryCard(
                        image: 'images/joystick_ico.png',
                        name: 'Videogames',
                      ),
                      Box(),
                      CategoryCard(
                        image: 'images/camera_ico.png',
                        name: 'Camera',
                      ),
                      Box(),
                      CategoryCard(
                        image: 'images/headphone.png',
                        name: 'Headphones',
                      ),
                      Box(),
                      CategoryCard(
                        image: 'images/laptop_ico.png',
                        name: 'Laptops',
                      ),
                      Box(),
                    ],
                  )),
            ),
            Expanded(
              child: Container(
                child: ScrollConfiguration(
                    behavior: MyBehaviour(),
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        LBox(),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductPage(),
                              ),
                            );
                          },
                          child: LCategoryCard(
                            image: 'images/console.png',
                            name: 'Console \nand Joystick',
                            colour: 0xFFbabfa8,
                          ),
                        ),
                        LBox(),
                        FlatButton(
                          onPressed: () {},
                          child: LCategoryCard(
                            image: 'images/camera.png',
                            name: 'Camera \nand Lenses',
                            colour: 0xFFb9bdbe,
                          ),
                        ),
                        LBox(),
                        FlatButton(
                          onPressed: () {},
                          child: LCategoryCard(
                            image: 'images/headphone_large.png',
                            name: 'Headphones \nand Speakers',
                            colour: 0xFF00a0d1,
                          ),
                        ),
                        LBox(),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LBox extends StatelessWidget {
  const LBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
    );
  }
}

class LCategoryCard extends StatelessWidget {
  LCategoryCard(
      {@required this.image, @required this.name, @required this.colour});

  final String image;
  final String name;
  final int colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(image),
          SizedBox(
            width: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Sriracha',
                height: 1.2,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Color(colour),
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  const Box({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.0,
    );
  }
}

class CategoryCard extends StatelessWidget {
  CategoryCard({@required this.image, @required this.name});

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 15.0,
          ),
          Image.asset(image, scale: 1.5),
          SizedBox(
            width: 10.0,
          ),
          Text(name),
          SizedBox(
            width: 15.0,
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Color(0xFFE7EBEE),
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
    );
  }
}

class MyBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    // TODO: implement buildViewportChrome
    return child;
  }
}
