import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';

class EditCard extends StatefulWidget {
  const EditCard({Key? key}) : super(key: key);

  @override
  _EditCardState createState() => _EditCardState();
}

class _EditCardState extends State<EditCard> {
  late ui.Image _image;

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  _loadImage() async {
    ByteData bd = await rootBundle.load("assets/sampleImagees.jpg");

    final Uint8List bytes = Uint8List.view(bd.buffer);
    final ui.Codec codec = await ui.instantiateImageCodec(bytes);
    final ui.Image image = (await codec.getNextFrame()).image;
    setState(() => _image = image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Back',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        color: const Color(0xFFf2cfd4),
                      ),
                      FlatButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Next',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        color: const Color(0xFFf2cfd4),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
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
                        child: SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                color: const Color(0xFFf2cfd4),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AspectRatio(
                                      aspectRatio: 1.0,
                                      child: CustomPaint(
                                        painter: ImageEditor(_image),
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
                const SizedBox(height: 50),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(left: 18.0),
                //       child: Text(
                //         'Erica Williams',
                //         style: TextStyle(
                //           fontSize: 20,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
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
