import 'package:flutter/material.dart';

class TextDisplay extends StatefulWidget {
  const TextDisplay({Key? key}) : super(key: key);
  static bool shouldDisplay = false;
  static String text = '';

  @override
  _TextDisplayState createState() => _TextDisplayState();
}

Offset offset = Offset.zero;

class _TextDisplayState extends State<TextDisplay> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(120, 140, 8, 0),
        child: Column(
          children: [
            TextDisplay.shouldDisplay
                ? GestureDetector(
                    onPanUpdate: (details) {
                      setState(() {
                        offset = Offset(offset.dx + details.delta.dx,
                            offset.dy + details.delta.dy);
                      });
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Center(
                        child: Text(
                          TextDisplay.text,
                          style: const TextStyle(
                            fontSize: 28,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(
                    height: 0,
                    width: 0,
                  ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
