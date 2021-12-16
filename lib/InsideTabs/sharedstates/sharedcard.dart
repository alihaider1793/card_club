import 'package:card_club/InsideTabs/sharedstates/TextDisplay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'dart:ui' as ui;
import '../Paint/CustomPaint.dart';
import '../Paint/Draawing.dart';
import 'package:card_club/InsideTabs/Screens/PaintPage.dart';
class SharedCard extends StatefulWidget {
  const SharedCard({Key? key}) : super(key: key);

  @override
  _SharedCardState createState() => _SharedCardState();
}

class _SharedCardState extends State<SharedCard> {


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
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          topLeft: Radius.circular(40)),
                      side: const BorderSide(
                        color: const Color(0xFFf2cfd4),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          color: const Color(0xFFf2cfd4),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                width: MediaQuery.of(context).size.width *
                                    0.7,
                                height:
                                MediaQuery.of(context).size.height *
                                    0.5 -
                                    10,
                                child: GestureDetector(
                                  onPanDown: (details) {
                                    setState(() {
                                      PaintPage.points.add(DrawingArea(
                                          point: details.localPosition,
                                          areaPaint: Paint()
                                            ..strokeCap = StrokeCap.round
                                            ..isAntiAlias = true
                                            ..color = PaintPage.selected!
                                            ..strokeWidth = PaintPage.stroke!));
                                    });
                                  },
                                  onPanUpdate: (details) {
                                    setState(() {
                                      PaintPage.points.add(DrawingArea(
                                          point: details.localPosition,
                                          areaPaint: Paint()
                                            ..strokeCap = StrokeCap.round
                                            ..isAntiAlias = true
                                            ..color = PaintPage.selected!
                                            ..strokeWidth = PaintPage.stroke!));
                                    });
                                  },
                                  onPanEnd: (details) {
                                    setState(() {
                                      PaintPage.points.add(null);
                                    });
                                  },
                                  child: ClipRRect(
                                    child: CustomPaint(
                                      painter:
                                      MyCustomPainter(points: PaintPage.points),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    color: const Color(0xFFf2cfd4),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(300, 5, 30, 0),
              child: SizedBox(
                height: size.height*0.045,
                width: size.width*0.2,
                child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  color: const Color(0xFFf0cede),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 8,
                      ),
                      SizedBox(
                        width: size.width*0.001,
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xFFffebf2),
                        radius: 8,
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
        TextDisplay(),
      ],
    );
  }
}
