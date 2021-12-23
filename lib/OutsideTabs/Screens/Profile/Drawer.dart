import 'package:flutter/material.dart';

class ClickDrawer extends StatefulWidget {
  const ClickDrawer({Key? key}) : super(key: key);

  @override
  _ClickDrawerState createState() => _ClickDrawerState();
}

class _ClickDrawerState extends State<ClickDrawer> {
  bool pressAttention1 = false;
  bool pressAttention2 = false;
  bool pressAttention3 = false;
  bool pressAttention4 = false;
  bool pressAttention5 = false;
  bool pressAttention6 = false;
  bool pressAttention7 = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: size.width * 1,
          height: size.height * 1,
          child: Drawer(
            elevation: 10,
            // backgroundColor: Colors.blue[400],
            child: Container(
              color: Colors.white,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 40, 30, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          backgroundImage: AssetImage('assets/images/dp.png'),
                          radius: 40,
                        ),
                        SizedBox(height: size.height * 0.005),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Erika Williams',
                              style: TextStyle(fontSize: 22),
                            ),
                            SizedBox(width: size.width * 0.06),
                            IconButton(
                              icon: Icon(Icons.mode_edit_sharp),
                              color: const Color(0xFFf2cfd4),
                              iconSize: 23,
                              onPressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.005),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.cake,
                              size: 20,
                            ),
                            SizedBox(width: size.width * 0.02),
                            Text(
                              'Oct 17',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[600],
                              ),
                            ),
                            SizedBox(width: size.width * 0.08),
                            Text(
                              '@erikawilliams33254',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Padding(
                    padding: EdgeInsets.only(left:20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pressAttention1 = !pressAttention1;
                              pressAttention2 = false;
                              pressAttention3 = false;
                              pressAttention4 = false;
                              pressAttention5 = false;
                              pressAttention6 = false;
                              pressAttention7 = false;
                            });
                          },
                          child: Container(
                              width: size.width * 0.9,
                              height: size.height * 0.09,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: pressAttention1
                                    ? const Color(0xFFf2cfd4)
                                    : Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.wallet_giftcard_sharp,
                                      color: pressAttention1
                                          ? Colors.white
                                          : Colors.grey[400],
                                      size: 28,
                                    ),
                                    SizedBox(width: size.width * 0.05),
                                    Text(
                                      'My Gifts',
                                      style: pressAttention1
                                          ? TextStyle(
                                          color: Colors.white, fontSize: 22)
                                          : TextStyle(
                                          color: Colors.black, fontSize: 22),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pressAttention1 = false;
                              pressAttention2 = !pressAttention2;
                              pressAttention3 = false;
                              pressAttention4 = false;
                              pressAttention5 = false;
                              pressAttention6 = false;
                              pressAttention7 = false;
                            });
                          },
                          child: Container(
                              width: size.width * 0.9,
                              height: size.height * 0.09,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: pressAttention2
                                    ? const Color(0xFFf2cfd4)
                                    : Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.email_outlined,
                                      color: pressAttention2
                                          ? Colors.white
                                          : Colors.grey[400],
                                      size: 28,
                                    ),
                                    SizedBox(width: size.width * 0.05),
                                    Text(
                                      'Received',
                                      style: pressAttention2
                                          ? TextStyle(
                                          color: Colors.white, fontSize: 22)
                                          : TextStyle(
                                          color: Colors.black, fontSize: 22),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pressAttention3 = !pressAttention3;
                              pressAttention2 = false;
                              pressAttention1 = false;
                              pressAttention4 = false;
                              pressAttention5 = false;
                              pressAttention6 = false;
                              pressAttention7 = false;
                            });
                          },
                          child: Container(
                              width: size.width * 0.9,
                              height: size.height * 0.09,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: pressAttention3
                                    ? const Color(0xFFf2cfd4)
                                    : Colors.white,

                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.shopping_cart_outlined,
                                      color: pressAttention3
                                          ? Colors.white
                                          : Colors.grey[400],
                                      size: 28,
                                    ),
                                    SizedBox(width: size.width * 0.05),
                                    Text(
                                      'Order Status',
                                      style: pressAttention3
                                          ? TextStyle(
                                          color: Colors.white, fontSize: 22)
                                          : TextStyle(
                                          color: Colors.black, fontSize: 22),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pressAttention4 = !pressAttention4;
                              pressAttention2 = false;
                              pressAttention3 = false;
                              pressAttention1 = false;
                              pressAttention5 = false;
                              pressAttention6 = false;
                              pressAttention7 = false;
                            });
                          },
                          child: Container(
                              width: size.width * 0.9,
                              height: size.height * 0.09,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: pressAttention4
                                    ? const Color(0xFFf2cfd4)
                                    : Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.sticky_note_2_outlined,
                                      color: pressAttention4
                                          ? Colors.white
                                          : Colors.grey[400],
                                      size: 28,
                                    ),
                                    SizedBox(width: size.width * 0.05),
                                    Text(
                                      'Drafts',
                                      style: pressAttention4
                                          ? TextStyle(
                                          color: Colors.white, fontSize: 22)
                                          : TextStyle(
                                          color: Colors.black, fontSize: 22),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pressAttention5 = !pressAttention5;
                              pressAttention2 = false;
                              pressAttention3 = false;
                              pressAttention4 = false;
                              pressAttention1 = false;
                              pressAttention6 = false;
                              pressAttention7 = false;
                            });
                          },
                          child: Container(
                              width: size.width * 0.9,
                              height: size.height * 0.09,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: pressAttention5
                                    ? const Color(0xFFf2cfd4)
                                    : Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.bookmark_outline,
                                      color: pressAttention5
                                          ? Colors.white
                                          : Colors.grey[400],
                                      size: 28,
                                    ),
                                    SizedBox(width: size.width * 0.05),
                                    Text(
                                      'Wish List',
                                      style: pressAttention5
                                          ? TextStyle(
                                          color: Colors.white, fontSize: 22)
                                          : TextStyle(
                                          color: Colors.black, fontSize: 22),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pressAttention6 = !pressAttention6;
                              pressAttention2 = false;
                              pressAttention3 = false;
                              pressAttention4 = false;
                              pressAttention5 = false;
                              pressAttention1 = false;
                              pressAttention7 = false;
                            });
                          },
                          child: Container(
                              width: size.width * 0.9,
                              height: size.height * 0.09,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: pressAttention6
                                    ? const Color(0xFFf2cfd4)
                                    : Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.event_outlined,
                                      color: pressAttention6
                                          ? Colors.white
                                          : Colors.grey[400],
                                      size: 28,
                                    ),
                                    SizedBox(width: size.width * 0.05),
                                    Text(
                                      'Reminders',
                                      style: pressAttention6
                                          ? TextStyle(
                                          color: Colors.white, fontSize: 22)
                                          : TextStyle(
                                          color: Colors.black, fontSize: 22),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        SizedBox(height: size.height * 0.049),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pressAttention7 = !pressAttention7;
                              pressAttention6 = false;
                              pressAttention5 = false;
                              pressAttention4 = false;
                              pressAttention3 = false;
                              pressAttention2 = false;
                              pressAttention1 = false;
                            });
                          },
                          child: Container(
                              width: size.width * 0.9,
                              height: size.height * 0.09,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: pressAttention7
                                    ? const Color(0xFFf2cfd4)
                                    : Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.settings_outlined,
                                      color: pressAttention7
                                          ? Colors.white
                                          : Colors.grey[400],
                                      size: 28,
                                    ),
                                    SizedBox(width: size.width * 0.05),
                                    Text(
                                      'Settings',
                                      style: pressAttention7
                                          ? TextStyle(
                                          color: Colors.white, fontSize: 22)
                                          : TextStyle(
                                          color: Colors.black, fontSize: 22),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
