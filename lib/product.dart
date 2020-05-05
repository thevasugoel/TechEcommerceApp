import 'package:flutter/material.dart';
import 'product_page.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductPage(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 35.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Container(
                  child: Image.asset('product/cut.png'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Xbox One Controller',
              style: TextStyle(fontSize: 30.0, fontFamily: 'Sriracha'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Limited Edition',
              style: TextStyle(
                fontSize: 20.0,
                height: 1.0,
                color: Colors.grey,
                fontFamily: 'Sriracha',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '4.6',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '(1396) Reviews',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Discover all the intensity, precision and comfort of the Xbox One Wireless Controller. Pulse Triggers let you experience vibration feedback so you can hear every shot and jolt in high definition',
                style: TextStyle(
                    fontSize: 16.0, letterSpacing: 1.5, color: Colors.black54),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                'Buy now for Rs. 4,999',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
            color: Colors.black,
            width: double.infinity,
            height: 65.0,
          ),
        ],
      ),
    );
  }
}
