import 'package:card_club/pages/enable_notification.dart';
import 'package:card_club/pages/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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

  List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width * 1,
            height: size.height * 1,
            padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: size.width * 0.2,
                      height: size.height * 0.042,
                      child: FlatButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signin(),
                            ),
                          );
                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        color: const Color(0xFFf2cfd4),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                const Text(
                  'Birthday!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.015),
                const Text(
                  'Help friends celebrate your birthday when its \ntime to celebrate... you!',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Card(
                  elevation: 1,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.grey[300]!),
                  ),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _date,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const Icon(
                          Icons.date_range_outlined,
                          size: 30,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 1.5,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.grey[300]!),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: size.height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_back_ios_sharp,
                            size: 15,
                            color: const Color(0xFFf2cfd4),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                              });
                            },
                            child: Card(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(1, 1, 1, 1),
                                child: const Text(
                                  '2018',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              color: Colors.grey[200],
                              elevation: 0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Card(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(3, 1, 3, 1),
                                child: const Text(
                                  '2019',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              color: Colors.grey[200],
                              elevation: 0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Card(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(3, 1, 3, 1),
                                child: const Text(
                                  '2020',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              color: Colors.grey[200],
                              elevation: 0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Card(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(3, 1, 3, 1),
                                child: const Text(
                                  '2021',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              color: const Color(0xFFf2cfd4),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Card(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(3, 1, 3, 1),
                                child: const Text(
                                  '2022',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              color: Colors.grey[200],
                              elevation: 0,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 15,
                            color: const Color(0xFFf2cfd4),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Card(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(5, 1, 5, 1),
                                child: const Text(
                                  'Jan',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              color: Colors.grey[200],
                              elevation: 0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Card(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(5, 1, 5, 1),
                                child: const Text(
                                  'Feb',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              color: Colors.grey[200],
                              elevation: 0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Card(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(5, 1, 5, 1),
                                child: const Text(
                                  'Mar',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              color: Colors.grey[200],
                              elevation: 0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Card(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(5, 1, 5, 1),
                                child: const Text(
                                  'Apr',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              color: Colors.grey[200],
                              elevation: 0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Card(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(5, 1, 5, 1),
                                child: const Text(
                                  'May',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              color: Colors.grey[200],
                              elevation: 0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Card(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(5, 1, 5, 1),
                                child: const Text(
                                  'Jun',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              color: Colors.grey[200],
                              elevation: 0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Card(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(5, 1, 5, 1),
                                child: const Text(
                                  'Jul',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              color: Colors.grey[200],
                              elevation: 0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Card(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(5, 1, 5, 1),
                                child: const Text(
                                  'Aug',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              color: Colors.grey[200],
                              elevation: 0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Card(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(5, 1, 5, 1),
                                child: const Text(
                                  'Sep',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              color: Colors.grey[200],
                              elevation: 0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Card(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(5, 1, 5, 1),
                                child: const Text(
                                  'Oct',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              color: Colors.grey[200],
                              elevation: 0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Card(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(5, 1, 5, 1),
                                child: const Text(
                                  'Nov',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              color: const Color(0xFFf2cfd4),
                              elevation: 0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {});
                            },
                            child: Card(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(5, 1, 5, 1),
                                child: const Text(
                                  'Dec',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              color: Colors.grey[200],
                              elevation: 0,
                            ),
                          ),
                        ],
                      ),
                      SfDateRangePicker(
                        controller: _controller,
                        initialSelectedDate: DateTime(2021, 01, 01),
                        todayHighlightColor: Colors.grey[400],
                        initialDisplayDate: DateTime(2021, 01, 01),
                        selectionColor:  Color(0xFF124d00),
                        view: DateRangePickerView.month,
                        onSelectionChanged: selectionChanged,
                        monthViewSettings: DateRangePickerMonthViewSettings(
                          viewHeaderStyle: DateRangePickerViewHeaderStyle(
                              textStyle: TextStyle(
                                  color: Colors.grey[400], fontSize: 13)),
                          firstDayOfWeek: 1,
                          dayFormat: 'EEE',
                        ),
                        showNavigationArrow: true,
                        headerStyle: DateRangePickerHeaderStyle(
                          textAlign: TextAlign.center,
                          textStyle: TextStyle(
                            color: Color(0xFF124d00),
                            fontSize: 23,
                          ),
                        ),
                        monthCellStyle: const DateRangePickerMonthCellStyle(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Container(
                  width: size.width * 0.9,
                  height: size.height * 0.075,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    color: const Color(0xFFF2CFD4),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Signin(),
                        ),
                      )
                    },
                    child: Text(
                      "Create account",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
