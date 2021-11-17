import 'package:card_club/pages/delivery_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class SetDate extends StatefulWidget {
  const SetDate({Key? key}) : super(key: key);

  @override
  _SetDateState createState() => _SetDateState();
}

class _SetDateState extends State<SetDate> {
  String _date = "01/01/2000";
  String _time = "00:00:00";

  @override
  void initState() {
    super.initState();
  }

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
                    // Navigator.of(context).popUntil(ModalRoute.withName('/'));
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
                  'Set Date & Time',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 50),
                const Text(
                  'Date & Time',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
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
                          height: 50,
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
                          height: 50,
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
                                            color: Colors.grey, fontSize: 16.0),
                                      ),
                                      const SizedBox(
                                        width: 20,
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
                const SizedBox(height: 300),
                SizedBox(
                  width: 350,
                  height: 50,
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
                      color: Colors.purple[50],
                      child: const Text(
                        'Next',
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
