import 'package:card_club/InsideTabs/tabs2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'dart:ui' as ui;
import '../InsideTabs/Paint/Draawing.dart';
import 'enable_notification.dart';


class EditCard extends StatefulWidget {
  const EditCard({Key? key}) : super(key: key);

  @override
  _EditCardState createState() => _EditCardState();
}

class _EditCardState extends State<EditCard> {
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
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 50),
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
                      builder: (context) => EnableNotification(),
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
          SizedBox(height: 200,),
          Padding(
            padding:
            const EdgeInsets.only(left: 30, right: 30, bottom: 40),
            child: Container(
              width: 200,
              // ignore: deprecated_member_use
              child: ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 80,
                    child: Text(
                      "Start Editing Cards",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                style: ButtonStyle(
                  foregroundColor:
                  MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(0xFFf2cfd4),
                  ),
                  shape:
                  MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  )
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageEditor extends CustomPainter {
  ui.Image image;

  ImageEditor(this.image) : super();

  @override
  Future paint(Canvas canvas, Size size) async {
    if (image != null) {
      canvas.drawImage(image, Offset(0.0, 0.0), Paint());
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return image != (oldDelegate as ImageEditor).image;
  }
}
