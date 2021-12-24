import 'package:card_club/InsideTabs/sharedstates/sharedcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'dart:ui' as ui;

import '../Paint/Draawing.dart';
import '../sharedstates/sharedcard1.dart';
import 'TextPage.dart';

class PaintPage extends StatefulWidget {
   PaintPage({Key? key}) : super(key: key);
  static late ui.Image _image;
  static List<DrawingArea?> points = [];
  static List<DrawingArea?> points1 = [];
 static Color? selected;
  static double? stroke;
  @override
  _PaintPageState createState() => _PaintPageState();
}

class _PaintPageState extends State<PaintPage> {




  @override
  void initState() {
    super.initState();
    PaintPage.selected = Colors.black;
    PaintPage.stroke = 2;
  }

  void selectColor() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Pick a color!'),
        content: SingleChildScrollView(
          child: BlockPicker(
            pickerColor: PaintPage.selected!,
            onColorChanged: (color) {
              setState(() {
                PaintPage.selected = color;
              });
            },
          ),
        ),
        actions: <Widget>[
          ElevatedButton(
            child: const Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  bool status=false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height*0.04),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // ignore: deprecated_member_use
                      FlatButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Back',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        color: const Color(0xFFf2cfd4),
                      ),
                      // ignore: deprecated_member_use
                      FlatButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TextPage(),
                          ),
                        );},
                        child: const Text(
                          'Next',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        color: const Color(0xFFf2cfd4),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height*0.05 ),
                status? SharedCardBack():SharedCard(),
                Padding(
                  padding: const EdgeInsets.only(top:10 , right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlutterSwitch(
                        height: size.height*0.04,
                        width: size.width*0.16,
                        valueFontSize: 25.0,
                        inactiveColor: Colors.grey[400]!,
                        activeColor:  const Color(0xFFF2CFD4),
                        //toggleSize: 45.0,
                        value: status,
                        borderRadius: 30.0,
                        //padding: 8.0,
                        showOnOff: false,
                        onToggle: (val) {
                          setState(() {
                            status = !status;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                 SizedBox(
                  height: size.height*0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.color_lens,
                              color: PaintPage.selected!,
                            ),
                            iconSize: 28,
                            onPressed: () {
                              selectColor();
                            },
                          ),
                          Slider(
                              min: 1,
                              max: 7,
                              activeColor: PaintPage.selected,
                              value: PaintPage.stroke!,
                              onChanged: (val) {
                                setState(() {
                                  PaintPage.stroke = val;
                                });
                              }),
                          IconButton(
                            icon: const Icon(Icons.layers_clear),
                            iconSize: 28,
                            onPressed: () {
                              setState(() {
                                PaintPage.points.clear();
                                PaintPage.points1.clear();

                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
