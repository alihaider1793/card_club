import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import '../../../pages/delivery_option.dart';

class Reminder extends StatefulWidget {
  const Reminder({Key? key}) : super(key: key);
  static String? valx;

  @override
  _ReminderState createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  String _date = "01/01/2000";
  String _time = "00:00:00";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFf2cfd4),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height*0.045),
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      //    side:  const BorderSide(color: Colors.grey)
                    ),
                    child: const Text(
                      'Cancel',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    color: Color(0xFFf2cfd4),
                  ),
                  SizedBox(height: size.height*0.025),
                  const Text(
                    'Create New Reminder',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: size.height*0.025),
                  const Text(
                    'Title',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: size.height*0.022),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      focusColor: Colors.grey,
                      hoverColor: Colors.grey,
                      suffixIconColor: Colors.grey,
                      hintText: "Mother's Birthday",
                      fillColor: Colors.grey,
                      hintStyle: TextStyle(color: Colors.grey),
                      // filled: true,
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  SizedBox(height: size.height*0.025),
                  const Text(
                    'Date & Time',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: size.height*0.022),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 25,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(color: Colors.grey)),
                          child: SizedBox(
                            height: size.height*0.07,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          " $_date",
                                          style: const TextStyle(
                                              color: Colors.grey,
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(width: size.width*0.07),
                                IconButton(
                                    onPressed: () {
                                      DatePicker.showDatePicker(context,
                                          theme: const DatePickerTheme(
                                            containerHeight: 210.0,
                                          ),
                                          showTitleActions: true,
                                          minTime: DateTime(2000, 1, 1),
                                          maxTime: DateTime(2022, 12, 31),
                                          onConfirm: (date) {
                                        _date =
                                            '${date.day}/${date.month}/${date.year}';
                                        setState(() {});
                                      },
                                          currentTime: DateTime.now(),
                                          locale: LocaleType.en);
                                    },
                                    icon: const Icon(
                                      Icons.date_range_outlined,
                                      color: Colors.grey,
                                    ))
                              ],
                            ),
                          ),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 25,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(color: Colors.grey)),
                          child: SizedBox(
                            height: size.height*0.07,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          " $_time",
                                          style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16.0),
                                        ),
                                         SizedBox(
                                          width: size.width*0.12,
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              DatePicker.showTimePicker(context,
                                                  theme: const DatePickerTheme(
                                                    containerHeight: 210.0,
                                                  ),
                                                  showTitleActions: true,
                                                  onConfirm: (time) {
                                                _time =
                                                    '${time.hour} : ${time.minute} : ${time.second}';
                                                setState(() {});
                                              },
                                                  currentTime: DateTime.now(),
                                                  locale: LocaleType.en);
                                              setState(() {});
                                            },
                                            icon: const Icon(
                                              Icons.schedule_rounded,
                                              color: Colors.grey,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: size.height*0.025),
                  const Text(
                    'Relationship',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: size.height*0.022),
                  DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      focusColor: Colors.grey,
                      hoverColor: Colors.grey,
                      suffixIconColor: Colors.grey,
                      hintText: "Mother",
                      fillColor: Colors.grey,
                      hintStyle: TextStyle(color: Colors.grey),
                      // filled: true,
                    ),
                    // value: _selected,
                    items: <String>[
                      'Mother',
                      'Father',
                      'Sister',
                      'Brother',
                      'Others'
                    ].map((_value) {
                      return DropdownMenuItem(
                          value: _value, child: Text(_value));
                    }).toList(),
                    onChanged: (val) => setState(() {
                      Reminder.valx = val.toString();
                    }),
                  ),
                  SizedBox(height: size.height*0.01),
                  Container(
                    width: size.width * 1,
                    height: size.height * 0.25,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Colors.grey)
                          //    side:  const BorderSide(color: Colors.grey)
                          ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Reminder.valx != null
                                ? Text(
                                    Reminder.valx!,
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 22),
                                  )
                                : Text(
                                    'Mother',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 22),
                                  ),
                            Divider(
                              height: 5,
                              color: Colors.grey,
                              thickness: 1,
                            ),
                            SizedBox(height: size.height*0.025),
                            Reminder.valx != null
                                ? Text(
                                    Reminder.valx!,
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 22),
                                  )
                                : Text(
                                    'Mother',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 22),
                                  ),
                            Divider(
                              height: 5,
                              color: Colors.grey,
                              thickness: 1,
                            ),
                            SizedBox(height: size.height*0.025),
                            Padding(
                              padding: const EdgeInsets.only(left: 188),
                              child: FlatButton.icon(
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: const BorderSide(color: Colors.grey)
                                      //    side:  const BorderSide(color: Colors.grey)
                                      ),
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.grey,
                                  ),
                                  label: Text(
                                    'Add relations',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height*0.02),
                  const Text(
                    'Add recipient',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: size.height*0.02),
                  Row(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/user1.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:20.0),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/user2.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/user3.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 140.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/sign.png'),
                              backgroundColor: Colors.grey,

                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: size.height*0.02),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: SizedBox(
                      width: size.width * 0.7,
                        height: size.height*0.07,
                      child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DeliveryOption(),
                              ),
                            );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          color: Color(0xFFf2cfd4),
                          child: const Text(
                            'Create reminder',
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
      ),
    );
  }
}
