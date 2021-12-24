import 'package:card_club/InsideTabs/sharedstates/TextDisplay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import '../Paint/CustomPaint.dart';
import '../Paint/Draawing.dart';
import 'package:card_club/InsideTabs/Screens/PaintPage.dart';

class SharedCardBack extends StatefulWidget {
  const SharedCardBack({Key? key}) : super(key: key);

  @override
  _SharedCardBackState createState() => _SharedCardBackState();
}

class _SharedCardBackState extends State<SharedCardBack> {
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

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          topRight: Radius.circular(40)),
                      side: const BorderSide(
                        color: const Color(0xFFf2cfd4),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                                width: MediaQuery.of(context).size.width * 0.7,
                                height:
                                    MediaQuery.of(context).size.height * 0.5 -
                                        10,
                                child: GestureDetector(
                                  onPanDown: (details) {
                                    setState(() {
                                      PaintPage.points1.add(DrawingArea(
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
                                      PaintPage.points1.add(DrawingArea(
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
                                      PaintPage.points1.add(null);
                                    });
                                  },
                                  child: ClipRRect(
                                    child: CustomPaint(
                                      painter: MyCustomPainter(
                                          points: PaintPage.points1),
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
          ],
        ),
        TextDisplay(),
      ],
    );
  }
}
