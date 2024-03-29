import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:stick_it/stick_it.dart';
import 'dart:ui' as ui;

import '../sharedstates/TextDisplay.dart';
import '../Paint/CustomPaint.dart';
import '../Paint/Draawing.dart';
import '../sharedstates/sharedcard.dart';
import '../sharedstates/sharedcard1.dart';
class TextPage extends StatefulWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  bool status=false;
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
                  color: Colors.transparent,
                  width: size.width * 1,
                  height: size.height * 0.83,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Center(
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
                      ],
                    ),
                  ),
                ),
                Container(
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
                      SizedBox(height: size.height*0.05),
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
                    ],
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

