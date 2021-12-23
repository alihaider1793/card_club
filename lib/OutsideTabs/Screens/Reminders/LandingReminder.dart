import 'package:card_club/OutsideTabs/Screens/Reminders/Reminders.dart';
import 'package:card_club/pages/enable_notification.dart';
import 'package:card_club/pages/signin.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Birthday extends StatefulWidget {
  const Birthday({Key? key}) : super(key: key);

  @override
  _BirthdayState createState() => _BirthdayState();
}

class _BirthdayState extends State<Birthday> {
  final DateRangePickerController _controller = DateRangePickerController();
  String _date = DateFormat('dd/MM/yyyy').format(DateTime.now()).toString();

  void selectionChanged(DateRangePickerSelectionChangedArgs args) {
    SchedulerBinding.instance!.addPostFrameCallback((duration) {
      setState(() {
        _date = DateFormat('dd/MM/yyyy').format(args.value).toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: size.width * 1,
            height: size.height * 1,
            color: const Color(0xFFf2cfd4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: size.width * 0.25,
                            height: size.height * 0.055,
                            child: FlatButton.icon(
                              color: Colors.white,
                              icon: Icon(Icons.arrow_back_ios_new_outlined,
                                  size: 16, color: Color(0xFFf2cfd4)),
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
                                    fontSize: 20, color: Color(0xFFf2cfd4)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.224,
                            height: size.height * 0.055,
                            child: FlatButton(
                              color: Colors.white,
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
                                    fontSize: 20, color: Color(0xFFf2cfd4)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height*0.02735),
                      Container(
                        width: size.width * 1,
                        height: size.height * 0.16,
                        color: const Color(0xFFf2cfd4),
                        child: Card(
                          color: const Color(0xFFf2cfd4),
                          elevation: 0,
                          shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(color: Colors.transparent),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SfDateRangePicker(
                                  controller: _controller,
                                  initialSelectedDate: DateTime(2021, 01, 01),
                                  todayHighlightColor: Colors.white,
                                  initialDisplayDate: DateTime(2021, 01, 01),
                                  selectionColor: Colors.pink[100],
                                  view: DateRangePickerView.month,
                                  onSelectionChanged: selectionChanged,
                                  monthViewSettings:
                                      DateRangePickerMonthViewSettings(
                                    viewHeaderStyle:
                                        DateRangePickerViewHeaderStyle(
                                      textStyle: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                    firstDayOfWeek: 7,
                                    dayFormat: 'EE',
                                  ),
                                  //showNavigationArrow: true,
                                  headerStyle: DateRangePickerHeaderStyle(
                                    textAlign: TextAlign.start,
                                    textStyle: TextStyle(
                                        color: Colors.white, fontSize: 23),
                                  ),
                                  monthCellStyle:
                                      const DateRangePickerMonthCellStyle(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height*0.00688),
                      Padding(
                        padding: const EdgeInsets.only(left: 165, right: 165),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18.0),
                          child: const Divider(
                            height: 5,
                            color: Colors.white,
                            thickness: 6,
                          ),
                        ),
                      ),
                      SizedBox(height: size.height*0.01365),
                    ],
                  ),
                ),
                Container(
                  width: size.width * 1,
                  height: size.height * 0.573,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 35, left: 30, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Reminder(s)',
                              style: TextStyle(
                                  color: const Color(0xFFf2cfd4), fontSize: 22),
                            ),
                            SizedBox(width: size.width*0.35),
                            Container(
                              width: size.width*0.073,
                              height: size.height*0.042,
                              decoration: new BoxDecoration(
                                color: const Color(0xFFf2cfd4),
                                borderRadius: new BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.refresh,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: size.width*0.02),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Reminder(),
                                  ),
                                );
                              },
                              child: Container(
                                width: size.width*0.073,
                                height: size.height*0.042,
                                decoration: new BoxDecoration(
                                  color: const Color(0xFFf2cfd4),
                                  borderRadius: new BorderRadius.circular(5),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height*0.04),
                        SizedBox(
                          width: size.width * 1,
                          height: size.height * 0.43,
                          child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          _date,
                                          style: const TextStyle(
                                              fontSize: 20, color: Colors.grey),
                                        ),
                                        SizedBox(width: size.width*0.035),
                                        SizedBox(
                                          width: size.width * 0.5,
                                          height: size.height * 0.25,
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              //    side:  const BorderSide(color: Colors.grey)
                                            ),
                                            color: const Color(0xFFf2cfd4),
                                            elevation: 2,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 20, 10, 0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Mother's Birthday",
                                                        style: TextStyle(
                                                            fontSize: 20),
                                                      ),
                                                      Icon(
                                                        Icons
                                                            .arrow_drop_up_sharp,
                                                        size: 25,
                                                        color: Colors.white,
                                                      )
                                                    ],
                                                  ),
                                                  Text(
                                                    "3 Days Remaining",
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                  SizedBox(height: size.height*0.06),
                                                  Text(
                                                    "Add more recipients:",
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                  SizedBox(
                                                    width: size.width * 0.5,
                                                    height: size.height * 0.065,
                                                    child: Card(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        //    side:  const BorderSide(color: Colors.grey)
                                                      ),
                                                      color: Colors.white,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(7.0),
                                                            child: Stack(
                                                              children: [
                                                                CircleAvatar(
                                                                  backgroundImage:
                                                                      AssetImage(
                                                                          'assets/images/user1.png'),
                                                                  radius: 15,
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          15.0),
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundImage:
                                                                        AssetImage(
                                                                            'assets/images/user2.png'),
                                                                    radius: 15,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          30.0),
                                                                  child:
                                                                      CircleAvatar(
                                                                    backgroundImage:
                                                                        AssetImage(
                                                                            'assets/images/user3.png'),
                                                                    radius: 15,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .arrow_drop_down_sharp,
                                                            size: 25,
                                                            color: Colors.grey,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: size.height*0.045),
                                    DottedLine(
                                      dashColor: Colors.grey,
                                    ),
                                    SizedBox(height: size.height*0.045),
                                  ],
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: size.width * 1,
                  height: size.height * 0.0889,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(100, 8.0, 100, 8),
                    child: FlatButton(
                      onPressed: () {},
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      color: const Color(0xFFf2cfd4),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
