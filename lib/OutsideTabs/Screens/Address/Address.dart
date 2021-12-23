import 'package:card_club/OutsideTabs/Screens/Address/Details.dart';
import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);
  static String? valx;

  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    //checkbox selection
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Color(0xFFF2CFD4);
      }
      return Color(0xFFF2CFD4);
    }

    var size = MediaQuery.of(context).size;
    //alert box
    openAlertBox() {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: GestureDetector(
                onTap: () {
                  FocusScopeNode currentFocus = FocusScope.of(context);
                  if (!currentFocus.hasPrimaryFocus) {
                    currentFocus.unfocus();
                  }
                },
                child: SingleChildScrollView(
                  child: AlertDialog(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    content: Container(
                      width: size.width * 1,
                      height: size.height * 0.43,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: size.width * 1,
                            height: size.height * 0.08,
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide:
                                      BorderSide(color: Colors.grey[400]!),
                                ),
                                focusColor: Colors.grey[400]!,
                                hoverColor: Colors.grey[400]!,
                                suffixIconColor: Colors.grey[400]!,
                                hintText: "Create a Group",
                                fillColor: Colors.grey,
                                hintStyle: TextStyle(color: Colors.grey),
                                // filled: true,
                              ),
                              // value: _selected,
                              items: <String>[
                                'Group1',
                                'Group2',
                                'Group3',
                                'Group4',
                                'Group5'
                              ].map((_value) {
                                return DropdownMenuItem(
                                    value: _value, child: Text(_value));
                              }).toList(),
                              onChanged: (val) => setState(() {
                                Address.valx = val.toString();
                              }),
                            ),
                          ),
                          SizedBox(height: size.height * 0.01),
                          Container(
                            width: size.width * 1,
                            height: size.height * 0.23,
                            decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey[300]!)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 30, 20, 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Address.valx != null
                                      ? Text(
                                          Address.valx!,
                                          style: TextStyle(
                                              color: Colors.grey[200],
                                              fontSize: 22),
                                        )
                                      : Text(
                                          'Group name...',
                                          style: TextStyle(
                                              color: Colors.grey[200],
                                              fontSize: 22),
                                        ),
                                  Divider(
                                    height: 5,
                                    color: Colors.grey[300],
                                    thickness: 1,
                                  ),
                                  SizedBox(height: size.height * 0.055),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: size.width * 0.22,
                                        height: size.height * 0.065,
                                        decoration: new BoxDecoration(
                                          color: const Color(0xFFf2cfd4),
                                          borderRadius:
                                              new BorderRadius.circular(10),
                                        ),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Center(
                                            child: Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: size.width * 0.35,
                                        height: size.height * 0.065,
                                        decoration: new BoxDecoration(
                                          color: const Color(0xFFf2cfd4),
                                          borderRadius:
                                              new BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Create",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: size.height * 0.03),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    BorderSide(color: Colors.grey[300]!),
                              ),
                              hintText: 'Send Questionnaire',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                            onChanged: (value) {
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          });
    }

    return SafeArea(
      child: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 40, top: 580),
          child: SizedBox(
            width: size.width * 0.2,
            height: size.height * 0.15,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details(),
                  ),
                );
              },
              backgroundColor: const Color(0xFFF2CFD4),
              child: const Icon(Icons.add),
              elevation: 1,
            ),
          ),
        ),
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
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.transparent,
                    width: size.width * 1,
                    height: size.height * 0.27,
                    child: Card(
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: const Radius.circular(120.0),
                          bottomRight: const Radius.circular(120.0),
                        ),
                      ),
                      elevation: 6,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 20, 30, 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: size.width * 0.23,
                                  height: size.height * 0.055,
                                  child: FlatButton.icon(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
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
                                    color: const Color(0xFFF2CFD4),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    openAlertBox();
                                  },
                                  child: Icon(
                                    Icons.more_vert,
                                    size: 50,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: size.width * 0.85,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                  ),
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ),
                                  // hintText: 'Search',
                                  fillColor: Colors.white,
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                                onChanged: (value) {
                                  setState(() {});
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  Container(
                      width: size.width * 1,
                      height: size.height * 0.6,
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0xFFf2cfd4),
                                      ),
                                      height: size.height * 0.05,
                                      width: size.width * 0.09,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/refreshbox.png'),
                                      )),
                                ),
                                Text(
                                  "Select all",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/avatar1.png'),
                                ),
                                SizedBox(width: size.width * 0.04),
                                Expanded(
                                  child: Text(
                                    "Anu",
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: size.width * 0.063,
                                  height: size.height * 0.035,
                                  decoration: new BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius:
                                        new BorderRadius.circular(100),
                                    border:
                                        Border.all(color: Color(0xFFF2CFD4)),
                                  ),
                                  child: Checkbox(
                                    shape: CircleBorder(),
                                    checkColor: Color(0xFFF2CFD4),
                                    fillColor:
                                        MaterialStateProperty.resolveWith(
                                            getColor),
                                    value: isChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/avatar2.png'),
                                ),
                                SizedBox(width: size.width * 0.04),
                                Expanded(
                                  child: Text(
                                    "Bill",
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: size.width * 0.063,
                                  height: size.height * 0.035,
                                  decoration: new BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius:
                                        new BorderRadius.circular(100),
                                    border:
                                        Border.all(color: Color(0xFFF2CFD4)),
                                  ),
                                  child: Checkbox(
                                    shape: CircleBorder(),
                                    checkColor: Color(0xFFF2CFD4),
                                    fillColor:
                                        MaterialStateProperty.resolveWith(
                                            getColor),
                                    value: isChecked1,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked1 = value!;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/avatar3.png'),
                                ),
                                SizedBox(width: size.width * 0.04),
                                Expanded(
                                  child: Text(
                                    "William",
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: size.width * 0.063,
                                  height: size.height * 0.035,
                                  decoration: new BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius:
                                        new BorderRadius.circular(100),
                                    border:
                                        Border.all(color: Color(0xFFF2CFD4)),
                                  ),
                                  child: Checkbox(
                                    shape: CircleBorder(),
                                    checkColor: Color(0xFFF2CFD4),
                                    fillColor:
                                        MaterialStateProperty.resolveWith(
                                            getColor),
                                    value: isChecked2,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked2 = value!;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/avatar4.png'),
                                ),
                                SizedBox(width: size.width * 0.04),
                                Expanded(
                                  child: Text(
                                    "Jane",
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: size.width * 0.063,
                                  height: size.height * 0.035,
                                  decoration: new BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius:
                                        new BorderRadius.circular(100),
                                    border:
                                        Border.all(color: Color(0xFFF2CFD4)),
                                  ),
                                  child: Checkbox(
                                    shape: CircleBorder(),
                                    checkColor: Color(0xFFF2CFD4),
                                    fillColor:
                                        MaterialStateProperty.resolveWith(
                                            getColor),
                                    value: isChecked3,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked3 = value!;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
