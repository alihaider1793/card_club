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
                      SizedBox(width: size.width * 0.2),
                      IconButton(
                        icon: Icon(Icons.mode_edit_sharp),
                        color: const Color(0xFFf2cfd4),
                        iconSize: 20,
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
                      SizedBox(width: size.width * 0.01),
                      Text(
                        'Oct 17',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(width: size.width * 0.2),
                      Text(
                        '@erikawilliams33254',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.04),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pressAttention1 = !pressAttention1;
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
                        child: Row(
                          children: [
                            Icon(
                              Icons.cake,
                              color: pressAttention1
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            SizedBox(width: size.width * 0.03),
                            Text(
                              'My Gifts',
                              style: pressAttention1
                                  ? TextStyle(color: Colors.white)
                                  : TextStyle(color: Colors.black),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(height: size.height * 0.01),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pressAttention2 = !pressAttention2;
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
                        child: Row(
                          children: [
                            Icon(Icons.message,color: pressAttention2
                                ? Colors.white
                                : Colors.black,),
                            SizedBox(width: size.width * 0.03),
                            Text(
                              'Received',
                              style: pressAttention2
                                  ? TextStyle(color: Colors.white)
                                  : TextStyle(color: Colors.black),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(height: size.height * 0.01),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pressAttention3 = !pressAttention3;
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
                        child: Row(
                          children: [
                            Icon(Icons.add_shopping_cart_sharp,color: pressAttention3
                                ? Colors.white
                                : Colors.black,),
                            SizedBox(width: size.width * 0.03),
                            Text(
                              'Order Status',
                              style: pressAttention3
                                  ? TextStyle(color: Colors.white)
                                  : TextStyle(color: Colors.black),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(height: size.height * 0.01),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pressAttention4 = !pressAttention4;
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
                        child: Row(
                          children: [
                            Icon(Icons.cake,color: pressAttention4
                                ? Colors.white
                                : Colors.black,),
                            SizedBox(width: size.width * 0.03),
                            Text(
                              'Drafts',
                              style: pressAttention4
                                  ? TextStyle(color: Colors.white)
                                  : TextStyle(color: Colors.black),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(height: size.height * 0.01),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pressAttention5 = !pressAttention5;
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
                        child: Row(
                          children: [
                            Icon(Icons.cake,color: pressAttention5
                                ? Colors.white
                                : Colors.black,),
                            SizedBox(width: size.width * 0.03),
                            Text(
                              'Wish List',
                              style: pressAttention5
                                  ? TextStyle(color: Colors.white)
                                  : TextStyle(color: Colors.black),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(height: size.height * 0.01),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pressAttention6 = !pressAttention6;
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
                        child: Row(
                          children: [
                            Icon(Icons.notifications,color: pressAttention6
                                ? Colors.white
                                : Colors.black,),
                            SizedBox(width: size.width * 0.03),
                            Text(
                              'Reminders',
                              style: pressAttention6
                                  ? TextStyle(color: Colors.white)
                                  : TextStyle(color: Colors.black),
                            ),
                          ],
                        )),
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
