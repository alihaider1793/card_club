import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:stick_it/stick_it.dart';
import 'dart:ui' as ui;
import 'Paint/CustomPaint.dart';
import 'Paint/Draawing.dart';
import 'TextDisplay.dart';

class CardStickers extends StatefulWidget {
  const CardStickers({Key? key}) : super(key: key);

  @override
  _CardStickersState createState() => _CardStickersState();
}

class _CardStickersState extends State<CardStickers> {
  late ui.Image _image;
  List<DrawingArea?> points = [];
  Color? selected;
  double? stroke;

  @override
  void initState() {
    super.initState();
    selected = Colors.black;
    stroke = 2;
  }

  void selectColor() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Pick a color!'),
        content: SingleChildScrollView(
          child: BlockPicker(
            pickerColor: selected!,
            onColorChanged: (color) {
              setState(() {
                selected = color;
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
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: StickIt(
          panelBackgroundColor: Colors.white,
          panelHeight: size.height * 0.11,
          panelStickerBackgroundColor: Colors.transparent,
          child: Stack(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // ignore: deprecated_member_use
                          FlatButton(
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Back',
                              style:
                              TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            color: const Color(0xFFf2cfd4),
                          ),
                          // ignore: deprecated_member_use
                          FlatButton(
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Next',
                              style:
                              TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            color: const Color(0xFFf2cfd4),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 40,
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: Card(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(40),
                                  topLeft: Radius.circular(40)),
                              side: BorderSide(
                                color: Color(0xFFf2cfd4),
                              ),
                            ),
                            child: SizedBox(
                              height: 50,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Container(
                                    color: const Color(0xFFf2cfd4),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          width: MediaQuery.of(context)
                                              .size
                                              .width *
                                              0.7,
                                          height: MediaQuery.of(context)
                                              .size
                                              .height *
                                              0.5 -
                                              10,
                                          child: GestureDetector(
                                            onPanDown: (details) {
                                              setState(() {
                                                points.add(DrawingArea(
                                                    point:
                                                    details.localPosition,
                                                    areaPaint: Paint()
                                                      ..strokeCap =
                                                          StrokeCap.round
                                                      ..isAntiAlias = true
                                                      ..color = selected!
                                                      ..strokeWidth = stroke!));
                                              });
                                            },
                                            onPanUpdate: (details) {
                                              setState(() {
                                                points.add(DrawingArea(
                                                    point:
                                                    details.localPosition,
                                                    areaPaint: Paint()
                                                      ..strokeCap =
                                                          StrokeCap.round
                                                      ..isAntiAlias = true
                                                      ..color = selected!
                                                      ..strokeWidth = stroke!));
                                              });
                                            },
                                            onPanEnd: (details) {
                                              setState(() {
                                                points.add(null);
                                              });
                                            },
                                            child: ClipRRect(
                                              child: CustomPaint(
                                                painter: MyCustomPainter(
                                                    points: points),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            color: const Color(0xFFf2cfd4),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: const BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(20)),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.color_lens,
                                    color: selected!,
                                  ),
                                  iconSize: 28,
                                  onPressed: () {
                                    selectColor();
                                  },
                                ),
                                Slider(
                                    min: 1,
                                    max: 7,
                                    activeColor: selected,
                                    value: stroke!,
                                    onChanged: (val) {
                                      setState(() {
                                        stroke = val;
                                      });
                                    }),
                                IconButton(
                                  icon: const Icon(Icons.layers_clear),
                                  iconSize: 28,
                                  onPressed: () {
                                    setState(() {
                                      points.clear();
                                    });
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const TextDisplay(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 510, 0, 0),
                child: Container(
                  color: Colors.transparent,
                  width: size.width * 1,
                  height: size.height * 0.08,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                TextDisplay.shouldDisplay = false;
                              });
                            },
                            icon: const Icon(Icons.cancel),
                          ),
                          Expanded(
                            child: SizedBox(
                              width: size.width * 0.5,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Enter your text',
                                  fillColor: Colors.white,
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFFf2cfd4), width: 1.5),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.pink, width: 1.5),
                                  ),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    TextDisplay.text = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                TextDisplay.shouldDisplay = true;
                              });
                            },
                            icon: const Icon(Icons.done),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          stickerList: [
            Image.asset('assets/images/among.jpg'),
            Image.asset('assets/images/anubis.png'),
            Image.asset('assets/images/book.jpg'),
            Image.asset('assets/images/joker.jpg'),
            Image.asset('assets/images/mush.png'),
            Image.asset('assets/images/pow.jpg'),
            Image.asset('assets/images/skull.jpg'),
            Image.asset('assets/images/snap.jpg'),
            Image.asset('assets/images/teddy.jpg'),
          ],
        )
      ),
    );
  }
}
