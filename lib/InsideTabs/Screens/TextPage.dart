import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:stick_it/stick_it.dart';
import 'dart:ui' as ui;

import '../../pages/TextDisplay.dart';
import '../Paint/CustomPaint.dart';
import '../Paint/Draawing.dart';
import '../sharedstates/sharedcard.dart';
class TextPage extends StatefulWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[100],
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
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
                      const SizedBox(height: 40),
                      SharedCard(),
                      const SizedBox(
                        height: 10,
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 530, 10, 0),
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
                              color: Color(0xFFf2cfd4),
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
                                          color: Color(0xFFf2cfd4), width: 1.5),
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
                              color: Color(0xFFf2cfd4),
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
          ),
        ),
      ),
    );
  }
}

