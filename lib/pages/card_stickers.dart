import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:stick_it/stick_it.dart';
import 'dart:ui' as ui;
import 'Paint/CustomPaint.dart';
import 'Paint/Draawing.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: StickIt(
        child: Image.asset(
          'assets/images/blank_card.png',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
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
      ),
    );
  }
}
