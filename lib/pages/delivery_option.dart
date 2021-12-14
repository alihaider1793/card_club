// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../OutsideTabs/tabs.dart';


class DeliveryOption extends StatefulWidget {
  const DeliveryOption({Key? key}) : super(key: key);

  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<DeliveryOption> {
  bool pressAttention = false;
  bool pressAttention1 = false;
  bool pressAttention2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                FlatButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TabBarController(),
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    //    side:  const BorderSide(color: Colors.grey)
                  ),
                  icon: const Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 15,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Back',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.purple[50],
                ),
                const SizedBox(height: 50),
                const Text(
                  'Delivery Method',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'How will we be delivering this card/gift to \nyour recipient?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 60),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Colors.grey)),
                    color: pressAttention ? Colors.purple[50] : Colors.white,
                    onPressed: () {
                      setState(() {
                        pressAttention = !pressAttention;
                        if (pressAttention2 == true) {
                          pressAttention2 = false;
                        }
                        if (pressAttention1 == true) {
                          pressAttention1 = false;
                        }
                      });
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Send via Text',
                        textAlign: TextAlign.start,
                        style: pressAttention
                            ? TextStyle(color: Colors.white)
                            : TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Colors.grey)),
                    color: pressAttention1 ? Colors.purple[50] : Colors.white,
                    onPressed: () {
                      setState(() {
                        pressAttention1 = !pressAttention1;
                        if (pressAttention2 == true) {
                          pressAttention2 = false;
                        }
                        if (pressAttention == true) {
                          pressAttention = false;
                        }
                      });
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Send via email',
                        style: pressAttention1
                            ? TextStyle(color: Colors.white)
                            : TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Colors.grey)),
                    color: pressAttention2 ? Colors.purple[50] : Colors.white,
                    onPressed: () {
                      setState(() {
                        pressAttention2 = !pressAttention2;
                        if (pressAttention == true) {
                          pressAttention = false;
                        }
                        if (pressAttention1 == true) {
                          pressAttention1 = false;
                        }
                      });
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Send a physical card',
                        style: pressAttention2
                            ? TextStyle(color: Colors.white)
                            : TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 170),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      color: Colors.purple[50],
                      child: const Text(
                        'Send',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
