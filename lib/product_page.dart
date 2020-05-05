import 'package:flutter/material.dart';
import 'category_page.dart';
import 'product.dart';

class ProductPage extends StatelessWidget {
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
              'Console \nand Speakers',
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
                      image: 'images/fire.png',
                      name: 'Deals',
                    ),
                    Box(),
                    CategoryCard(
                      image: 'images/news.png',
                      name: 'News',
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 20.0),
            child: Text(
              '239 results',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Sriracha',
                height: 1.2,
              ),
            ),
          ),
          Expanded(
            child: ScrollConfiguration(
              behavior: MyBehaviour(),
              child: ListView(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Product(),
                                  ),
                                );
                              },
                              child: LeftProduct(
                                image: 'product/product1.png',
                                name: 'Xbox One Controller',
                              ),
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: LeftProduct(
                                image: 'product/beats.png',
                                name: 'Beats Headphones',
                              ),
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: LeftProduct(
                                image: 'product/joy2.png',
                                name: 'Gaming Joystick',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {},
                              child: LeftProduct(
                                image: 'product/thrust_joystick.png',
                                name: 'Thrustmaster Joystick',
                              ),
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: LeftProduct(
                                image: 'product/speaker.png',
                                name: 'Sony Speakers',
                              ),
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: LeftProduct(
                                image: 'product/play4.png',
                                name: 'Play4 Controller',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class LeftProduct extends StatelessWidget {
  LeftProduct({this.image, this.name});

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ProductContainer(
            image: image,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 3.0, top: 20.0),
          child: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 3.0, top: 6.0),
          child: Text(
            'Limited Edition',
            style: TextStyle(
              fontSize: 12.0,
              color: Color(0xff9b9c9d),
            ),
          ),
        ),
      ],
    );
  }
}

class ProductContainer extends StatelessWidget {
  ProductContainer({@required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(image),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        color: Color(0xfff5f6fa),
      ),
    );
  }
}
