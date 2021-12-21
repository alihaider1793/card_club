import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: Container(
              width: size.width * 1,
              height: size.height * 1,
              color:  Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      color: Colors.transparent,
                      width: size.width * 1,
                      height: size.height * 0.3,
                      child: Card(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: const Radius.circular(120.0),
                            bottomRight: const Radius.circular(120.0),
                          ),
                        ),
                        elevation: 6,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30,20,30,40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FlatButton.icon(
                                onPressed: () {
                                  Navigator.pop(context);
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
                                color:  const Color(0xFFf2cfd4),
                              ),
                              SizedBox(
                                width: size.width * 0.85,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(30.0),
                                      borderSide: const BorderSide(
                                          color: Colors.grey),
                                    ),
                                    suffixIcon: Icon(
                                      Icons.search,
                                      color: Colors.grey,
                                    ),
                                    hintText: 'Search',
                                    fillColor: Colors.white,
                                    hintStyle:
                                    TextStyle(color: Colors.grey),
                                    filled: true,
                                  ),
                                  onChanged: (value) {
                                    setState(() {});
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                  Container(
                    width: size.width * 1,
                    height: size.height * 0.667,
                    color: Colors.transparent,
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(20,10,20,0),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      child: Text('W',
                                      style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.black,
                                      ),),
                                   backgroundColor: const Color(0xFFf2cfd4),
                                      radius: 35,
                                    ),
                                    SizedBox(width: size.width*0.04),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text("You can get a copy of your digital\ncard here.",
                                       style: TextStyle(
                                         fontSize: 20,
                                         color: Colors.black,
                                       ),),
                                     Text("Seen . 3 days ago",
                                       style: TextStyle(
                                         fontSize: 12,
                                         color: Colors.grey,
                                       ),),
                                   ],
                                 )
                                  ],
                                ),
                                SizedBox(height: size.height*0.045),
                                DottedLine(
                                  dashColor: Colors.grey,
                                ),
                                SizedBox(height: size.height*0.045),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
