import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:stick_it/stick_it.dart';
import 'dart:ui' as ui;
import '../../../InsideTabs/Paint/CustomPaint.dart';
import '../../../InsideTabs/Paint/Draawing.dart';
import '../../InsideTabs/sharedstates/TextDisplay.dart';

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
                SizedBox(height: 80),
                Text(
                  'Products',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: size.width * 1,
                  height: size.height * 0.4,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                        width: size.width * 0.6,
                        height: size.height * 0.4,
                        child: GridView.count(
                          // Create a grid with 2 columns. If you change the scrollDirection to
                          // horizontal, this produces 2 rows.
                          crossAxisCount: 1,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                          scrollDirection: Axis.horizontal,
                          children: List.generate(
                            50,
                            (index) {
                              return GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Stack(
                                    children: [
                                      Image(
                                        image: AssetImage('assets/images/custombox.png'),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Most Popular',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),
                    Text('See all',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                         ),),
                  ],
                ),
                SizedBox(height: 8),
                Container(
                  color: Colors.transparent,
                  width: size.width * 1,
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
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: AssetImage('assets/images/gift1png.png'),
                                ),
                                SizedBox(width: 10,),
                                Text('Customizable digital eGift \nCards',
                                style: TextStyle(
                                  fontSize: 18
                                ),),
                              ],
                            ),
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
