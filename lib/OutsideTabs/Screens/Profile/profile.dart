import 'package:card_club/OutsideTabs/Screens/Profile/Interests.dart';
import 'package:card_club/pages/delivery_option.dart';
import 'package:flutter/material.dart';

import 'Drawer.dart';
import 'Inbox.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String _date = "01/01/2000";
  String _time = "00:00:00";

  @override
  void initState() {
    super.initState();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: ClickDrawer(),
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                         _scaffoldKey.currentState!.openDrawer();
                        print("Drawer clicked");
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFf2cfd4),
                          ),
                          height: size.height * 0.065,
                          width: size.width * 0.12,
                          child: Icon(
                            Icons.more_horiz,
                            size: 40,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.02,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Inbox(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFf2cfd4),
                            ),
                            height: size.height * 0.065,
                            width: size.width * 0.12,
                            child: Icon(
                              Icons.mail_outline_rounded,
                              size: 40,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: size.height * 0.1),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 40,
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: const Color(0xFFf2cfd4),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              color: const Color(0xFFf2cfd4),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0xFFf2cfd4),
                                        ),
                                        height: size.height * 0.06,
                                        width: size.width * 0.1,
                                        child: Icon(
                                          Icons.upload,
                                          size: 35,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                  ),
                                  SizedBox(
                                    height: size.height * 0.03,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'UPLOAD',
                                        style: TextStyle(
                                          fontSize: 22,
                                          letterSpacing: 2,
                                        ),
                                      ),
                                    ],
                                  )
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
                SizedBox(height: size.height * 0.07),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Erica Williams',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        '@ericawilliams123123',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.07),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 30,
                      height: size.height * 0.1,
                      child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Interests(),
                              ),
                            );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: const Color(0xFFf2cfd4),
                          child: const Text(
                            'Add Interest',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 30,
                      height: size.height * 0.1,
                      child: FlatButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: const Color(0xFFf2cfd4),
                          child: const Text(
                            'Create Wishlist',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
