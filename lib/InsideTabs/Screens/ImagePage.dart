import 'dart:io';

import 'package:card_club/InsideTabs/sharedstates/sharedcard1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import '../sharedstates/sharedcard.dart';
import 'PaintPage.dart';
import 'TextPage.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  _ImagePageState createState() => _ImagePageState();
}

Offset offset = Offset.zero;

class _ImagePageState extends State<ImagePage> {
  @override
  void initState() {
    super.initState();
    PaintPage.selected = Colors.black;
    PaintPage.stroke = 2;
  }

  File? pickedImage;

  //bottom sheet for choosing option
  void imagePickerOption() {
    Get.bottomSheet(
      SingleChildScrollView(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: Container(
            color: Color(0xFFf2cfd4),
            height: MediaQuery.of(context).size.height * 0.3,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(60, 20, 60, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Select Image from",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {
                      pickImage(ImageSource.camera);
                    },
                    icon: const Icon(
                      Icons.camera,
                      color: Color(0xFFf2cfd4),
                    ),
                    label: const Text(
                      "CAMERA",
                      style: TextStyle(
                        color: Color(0xFFf2cfd4),
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {
                      pickImage(ImageSource.gallery);
                    },
                    icon: const Icon(Icons.image, color: Color(0xFFf2cfd4)),
                    label: const Text(
                      "GALLERY",
                      style: TextStyle(color: Color(0xFFf2cfd4)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 80, vertical: 0),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.close, color: Color(0xFFf2cfd4)),
                      label: const Text(
                        "CANCEL",
                        style: TextStyle(color: Color(0xFFf2cfd4)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //select from gallery/camera
  pickImage(ImageSource imageType) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });

      Get.back();
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  //color picker dialogue box
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
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 0.04),
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20),
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TextPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'Next',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        color: const Color(0xFFf2cfd4),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Stack(
                  children: [
                    status?SharedCardBack():SharedCard(),
                    pickedImage != null
                        ? Positioned(
                            left: offset.dx,
                            top: offset.dy,
                            child: GestureDetector(
                              onPanUpdate: (details) {
                                setState(() {
                                  offset = Offset(offset.dx + details.delta.dx,
                                      offset.dy + details.delta.dy);
                                });
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(95, 15, 0, 0),
                                child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    width: MediaQuery.of(context).size.width *
                                        0.35,
                                    height: MediaQuery.of(context).size.height *
                                        0.25,
                                    child: Image.file(
                                      pickedImage!,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                          )
                        : Container(
                            color: Colors.red,
                          ),
                  ],
                ),
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
                SizedBox(height: size.height*0.03),
                Center(
                  child: FlatButton(
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: imagePickerOption,
                    color: const Color(0xFFf2cfd4),
                    child: Text(
                      'Upload',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
