import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Interests extends StatefulWidget {
  const Interests({Key? key}) : super(key: key);

  @override
  _InterestsState createState() => _InterestsState();
}

class _InterestsState extends State<Interests> {
  bool status=false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    openAlertBox() {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: const Color(0xFFf2cfd4),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0))),
              contentPadding: EdgeInsets.only(top: 10.0),
              content: Container(
                width: size.width * 0.7,
                height: size.height * 0.3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Hey Erika Williams',
                        style: TextStyle(
                          fontSize: 22.5,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: size.height*0.02,
                      ),
                      Text(
                        'Your changes have been saved',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: size.width * 0.25,
                            height: size.height * 0.05,
                            child: RaisedButton(
                              elevation: 2,
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                //    side:  const BorderSide(color: Colors.grey)
                              ),
                              child: const Text(
                                'Done',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFFf2cfd4),
                                ),
                              ),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          });
    }

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width * 1,
          height: size.height * 1,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * 0.25,
                  height: size.height * 0.06,
                  child: FlatButton.icon(
                    icon: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 16,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      //    side:  const BorderSide(color: Colors.grey)
                    ),
                    label: const Text(
                      'Back',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    color: Color(0xFFf2cfd4),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/images/person.png'),
                    radius: 120,
                  ),
                ),
                Text(
                  'Erika Williams',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '@erikawilliams33254',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: size.width*0.2),
                    IconButton(
                      icon: Icon(Icons.mode_edit_sharp),
                      color: const Color(0xFFf2cfd4),
                      iconSize: 20,
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(
                  width: size.width * 1,
                  height: size.height * 0.15,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      //    side:  const BorderSide(color: Colors.grey)
                    ),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15,15,30,15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Display all',
                                style: TextStyle(fontSize: 21),
                              ),
                              Text(
                                'Show following information',
                                style: TextStyle(fontSize: 17),
                              )
                            ],
                          ),
                          FlutterSwitch(
                            height: size.height*0.04,
                            width: size.width*0.13,
                            valueFontSize: 25.0,
                            inactiveColor: Colors.grey[400]!,
                            activeColor:  const Color(0xFFF2CFD4),
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
                  ),
                ),
                SizedBox(height: size.height*0.03),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width * 0.055,
                              height: size.height * 0.03,
                              decoration: new BoxDecoration(
                                color: const Color(0xFFf2cfd4),
                                borderRadius: new BorderRadius.circular(3),
                              ),
                              child: Icon(
                                Icons.refresh,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: size.width*0.03),
                        Container(
                          width: size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'About you...',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 15,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: size.height*0.015),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width * 0.055,
                              height: size.height * 0.03,
                              decoration: new BoxDecoration(
                                color: const Color(0xFFf2cfd4),
                                borderRadius: new BorderRadius.circular(3),
                              ),
                              child: Icon(
                                Icons.refresh,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: size.width*0.03),
                        Container(
                          width: size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Your Interests...',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 15,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: size.height*0.015),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width * 0.055,
                              height: size.height * 0.03,
                              decoration: new BoxDecoration(
                                color: const Color(0xFFf2cfd4),
                                borderRadius: new BorderRadius.circular(3),
                              ),
                              child: Icon(
                                Icons.refresh,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: size.width*0.03),
                        Container(
                          width: size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'More info...',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 15,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: size.height*0.03),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: SizedBox(
                    width: size.width * 0.8,
                    height: size.height * 0.07,
                    child: FlatButton(
                        onPressed: () {
                          openAlertBox();
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        color: Color(0xFFf2cfd4),
                        child: const Text(
                          'Save changes',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
