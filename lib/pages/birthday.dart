import 'package:card_club/pages/enable_notification.dart';
import 'package:flutter/cupertino.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlatButton(
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EnableNotification(),
                          ),
                        );
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      color: const Color(0xFFf2cfd4),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Birthday!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Help friends celebrate your birthday when its \ntime to celebrate... you!',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 15),
                Card(
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.grey),
                  ),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 0),
                Card(
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.grey),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_back_ios_sharp,
                              size: 15,
                              color: const Color(0xFFf2cfd4),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {});
                              },
                              child: Card(
                                child: Container(
                                  margin: const EdgeInsets.fromLTRB(1, 1, 1, 1),
                                  child: const Text(
                                    '2018',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                color: Colors.grey[50],
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
                                color: Colors.grey[50],
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
                                color: Colors.grey[50],
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
                                color: Colors.grey[50],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 15,
                              color: const Color(0xFFf2cfd4),
                            ),
                          ],
                        ),
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
                                  'Jan',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              color: Colors.grey[50],
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
                              color: Colors.grey[50],
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
                              color: Colors.grey[50],
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
                              color: Colors.grey[50],
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
                              color: Colors.grey[50],
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
                              color: Colors.grey[50],
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
                              color: Colors.grey[50],
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
                              color: Colors.grey[50],
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
                              color: Colors.grey[50],
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
                              color: Colors.grey[50],
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
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                initialSelectedDate:
                                DateTime.december;
                              });
                            },
                            child: Card(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(5, 1, 5, 1),
                                child: const Text(
                                  'Dec',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              color: Colors.grey[50],
                            ),
                          ),
                        ],
                      ),
                      SfDateRangePicker(
                        controller: _controller,
                        initialSelectedDate: DateTime(2021, 01, 01),
                        todayHighlightColor: Colors.grey[400],
                        initialDisplayDate: DateTime(2021, 01, 01),
                        selectionColor: const Color(0xFFf2cfd4),
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
                            color: const Color(0xFFf2cfd4),
                          ),
                        ),
                        monthCellStyle: const DateRangePickerMonthCellStyle(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 288,
                      height: 50,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EnableNotification(),
                            ),
                          );
                        },
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Text(
                          'Create Account',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        color: const Color(0xFFf2cfd4),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
