import 'package:flutter/material.dart';

class Interests extends StatefulWidget {
  const Interests({Key? key}) : super(key: key);

  @override
  _InterestsState createState() => _InterestsState();
}

class _InterestsState extends State<Interests> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                  width: size.width * 0.225,
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
                    SizedBox(width: 60),
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
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
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
                          SizedBox(width: 80),
                          Icon(Icons.toggle_on,
                              size: 50, color: const Color(0xFFf2cfd4)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: const Color(0xFFf2cfd4),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'About you...',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    SizedBox(width: 225),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15,
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: const Color(0xFFf2cfd4),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Your Interests...',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    SizedBox(width: 200),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15,
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: const Color(0xFFf2cfd4),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'More info...',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    SizedBox(width: 230),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15,
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: SizedBox(
                    width: size.width * 0.8,
                    height: 50,
                    child: FlatButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => DeliveryOption(),
                          //   ),
                          // );
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
