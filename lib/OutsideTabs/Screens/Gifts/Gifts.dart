import 'package:card_club/OutsideTabs/Screens/Gifts/Products.dart';
import 'package:flutter/material.dart';


class Gifts extends StatefulWidget {
  const Gifts({Key? key}) : super(key: key);

  @override
  _GiftsState createState() => _GiftsState();
}

class _GiftsState extends State<Gifts> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          width: size.width * 1,
          height: size.height * 1,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height*0.1),
                Text(
                  'Products',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                SizedBox(height: size.height*0.02),
                Container(
                  width: size.width * 1,
                  height: size.height * 0.4,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Gift Cards',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Party Cards',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Business \n  Cards',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.transparent,
                        width: size.width * 0.676,
                        height: size.height * 0.3,
                        child: GridView.count(
                          // Create a grid with 2 columns. If you change the scrollDirection to
                          // horizontal, this produces 2 rows.
                          crossAxisCount: 1,
                          crossAxisSpacing: 0,
                          scrollDirection: Axis.horizontal,

                          children: List.generate(
                            20,
                            (index) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image(

                                  image:
                                      AssetImage('assets/images/custombox.png'),

                                  fit: BoxFit.contain,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height*0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Most Popular',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height*0.03),
                Container(
                  color: Colors.transparent,
                  width: size.width * 0.9,
                  height: size.height * 0.225,
                  child: GridView.count(
                    // Create a grid with 2 columns. If you change the scrollDirection to
                    // horizontal, this produces 2 rows.
                    crossAxisCount: 1,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    //scrollDirection: Axis.horizontal,
                    children: List.generate(
                      50,
                      (index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductPage(),
                              ),
                            );
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image(
                                  image:
                                      AssetImage('assets/images/gift1png.png'),
                                ),
                              ),
                              SizedBox(
                                width: size.width*0.02,
                              ),
                              Text(
                                'Customizable digital eGift \nCards',
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
