import 'package:flutter/material.dart';
import 'package:stick_it/stick_it.dart';
import '../sharedstates/sharedcard.dart';
import 'TextPage.dart';

class StickersPage extends StatefulWidget {
  const StickersPage({Key? key}) : super(key: key);

  @override
  _StickersPageState createState() => _StickersPageState();
}

class _StickersPageState extends State<StickersPage> {
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
          child: StickIt(
            panelBackgroundColor: Colors.grey[100]!,
            panelHeight: size.height * 0.13,
            panelStickerBackgroundColor: Colors.transparent,
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: size.height * 0.04),
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              color: const Color(0xFFf2cfd4),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height * 0.05),
                      SharedCard(),
                    ],
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
          ),
        ),
      ),
    );
  }
}
