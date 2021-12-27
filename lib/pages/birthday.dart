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

  List<bool> attention = [true, false];
  List<String> yearpress = ['year1', 'year2', 'year3', 'year4', 'year5'];
  List<String> years = ['2018', '2019', '2020', '2021', '2022'];
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
    'Dec',
  ];

  bool year1 = false;
  bool year2 = false;
  bool year3 = false;
  bool year4 = false;
  bool year5 = false;
  bool month1 = false;
  bool month2 = false;
  bool month3 = false;
  bool month4 = false;
  bool month5 = false;
  bool month6 = false;
  bool month7 = false;
  bool month8 = false;
  bool month9 = false;
  bool month10 = false;
  bool month11 = false;
  bool month12 = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    attention = [false];
  }

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
                GestureDetector(
                  child: Card(
                    elevation: 1.5,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.grey[300]!),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_back_ios_sharp,
                              size: 20,
                              color: const Color(0xFFf2cfd4),
                            ),
                            Container(
                              width: size.width * 0.14,
                              height: size.height * 0.04,
                              child: FlatButton(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: year1
                                    ? Color(0xFF124d00)
                                    : Colors.grey[300],
                                onPressed: () {
                                  setState(() {
                                    year1 = !year1;
                                    year2 = false;
                                    year3 = false;
                                    year4 = false;
                                    year5 = false;
                                  });
                                },
                                child: Text(
                                  years[0],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: year1 ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * 0.14,
                              height: size.height * 0.04,
                              child: FlatButton(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: year2
                                    ? Color(0xFF124d00)
                                    : Colors.grey[300],
                                onPressed: () {
                                  setState(() {
                                    year2 = !year2;
                                    year1 = false;
                                    year3 = false;
                                    year4 = false;
                                    year5 = false;
                                  });
                                },
                                child: Text(
                                  years[1],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: year2 ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * 0.14,
                              height: size.height * 0.04,
                              child: FlatButton(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: year3
                                    ? Color(0xFF124d00)
                                    : Colors.grey[300],
                                onPressed: () {
                                  setState(() {
                                    year3 = !year3;
                                    year1 = false;
                                    year2 = false;
                                    year4 = false;
                                    year5 = false;
                                  });
                                },
                                child: Text(
                                  years[2],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: year3 ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * 0.14,
                              height: size.height * 0.04,
                              child: FlatButton(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: year4
                                    ? Color(0xFF124d00)
                                    : Colors.grey[300],
                                onPressed: () {
                                  setState(() {
                                    year4 = !year4;
                                    year1 = false;
                                    year2 = false;
                                    year3 = false;
                                    year5 = false;
                                  });
                                },
                                child: Text(
                                  years[3],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: year4 ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * 0.14,
                              height: size.height * 0.04,
                              child: FlatButton(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: year5
                                    ? Color(0xFF124d00)
                                    : Colors.grey[300],
                                onPressed: () {
                                  setState(() {
                                    year5 = !year5;
                                    year1 = false;
                                    year2 = false;
                                    year3 = false;
                                    year4 = false;
                                  });
                                },
                                child: Text(
                                  years[4],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: year5 ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 20,
                              color: const Color(0xFFf2cfd4),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: size.width * 0.122,
                              height: size.height * 0.04,
                              child: FlatButton(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: month1
                                    ? Color(0xFF124d00)
                                    : Colors.grey[300],
                                onPressed: () {
                                  setState(() {
                                    month1 = !month1;
                                    month2 = false;
                                    month3 = false;
                                    month4 = false;
                                    month5 = false;
                                    month6 = false;
                                    month7 = false;
                                    month8 = false;
                                    month9 = false;
                                    month10 = false;
                                    month11 = false;
                                    month12 = false;
                                  });
                                },
                                child: Text(
                                  months[0],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: month1 ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * 0.122,
                              height: size.height * 0.04,
                              child: FlatButton(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: month2
                                    ? Color(0xFF124d00)
                                    : Colors.grey[300],
                                onPressed: () {
                                  setState(() {
                                    month2 = !month2;
                                    month1 = false;
                                    month3 = false;
                                    month4 = false;
                                    month5 = false;
                                    month6 = false;
                                    month7 = false;
                                    month8 = false;
                                    month9 = false;
                                    month10 = false;
                                    month11 = false;
                                    month12 = false;
                                  });
                                },
                                child: Text(
                                  months[1],
                                  style: TextStyle(
                                    color: month2 ? Colors.white : Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * 0.13,
                              height: size.height * 0.04,
                              child: FlatButton(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: month3
                                    ? Color(0xFF124d00)
                                    : Colors.grey[300],
                                onPressed: () {
                                  setState(() {
                                    month3 = !month3;
                                    month2 = false;
                                    month1 = false;
                                    month4 = false;
                                    month5 = false;
                                    month6 = false;
                                    month7 = false;
                                    month8 = false;
                                    month9 = false;
                                    month10 = false;
                                    month11 = false;
                                    month12 = false;
                                  });
                                },
                                child: Text(
                                  months[2],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: month3 ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * 0.12,
                              height: size.height * 0.04,
                              child: FlatButton(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: month4
                                    ? Color(0xFF124d00)
                                    : Colors.grey[300],
                                onPressed: () {
                                  setState(() {
                                    month4 = !month4;
                                    month2 = false;
                                    month3 = false;
                                    month1 = false;
                                    month5 = false;
                                    month6 = false;
                                    month7 = false;
                                    month8 = false;
                                    month9 = false;
                                    month10 = false;
                                    month11 = false;
                                    month12 = false;
                                  });
                                },
                                child: Text(
                                  months[3],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: month4 ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * 0.13,
                              height: size.height * 0.04,
                              child: FlatButton(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: month5
                                    ? Color(0xFF124d00)
                                    : Colors.grey[300],
                                onPressed: () {
                                  setState(() {
                                    month5 = !month5;
                                    month2 = false;
                                    month3 = false;
                                    month4 = false;
                                    month1 = false;
                                    month6 = false;
                                    month7 = false;
                                    month8 = false;
                                    month9 = false;
                                    month10 = false;
                                    month11 = false;
                                    month12 = false;
                                  });
                                },
                                child: Text(
                                  months[4],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: month5 ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * 0.122,
                              height: size.height * 0.04,
                              child: FlatButton(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: month6
                                    ? Color(0xFF124d00)
                                    : Colors.grey[300],
                                onPressed: () {
                                  setState(() {
                                    month6 = !month6;
                                    month2 = false;
                                    month3 = false;
                                    month4 = false;
                                    month5 = false;
                                    month1 = false;
                                    month7 = false;
                                    month8 = false;
                                    month9 = false;
                                    month10 = false;
                                    month11 = false;
                                    month12 = false;
                                  });
                                },
                                child: Text(
                                  months[5],
                                  style: TextStyle(
                                    color: month6 ? Colors.white : Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: size.width * 0.12,
                              height: size.height * 0.04,
                              child: FlatButton(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: month7
                                    ? Color(0xFF124d00)
                                    : Colors.grey[300],
                                onPressed: () {
                                  setState(() {
                                    month7 = !month7;
                                    month2 = false;
                                    month3 = false;
                                    month4 = false;
                                    month5 = false;
                                    month6 = false;
                                    month1 = false;
                                    month8 = false;
                                    month9 = false;
                                    month10 = false;
                                    month11 = false;
                                    month12 = false;
                                  });
                                },
                                child: Text(
                                  months[6],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: month7 ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * 0.13,
                              height: size.height * 0.04,
                              child: FlatButton(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: month8
                                    ? Color(0xFF124d00)
                                    : Colors.grey[300],
                                onPressed: () {
                                  setState(() {
                                    month8 = !month8;
                                    month2 = false;
                                    month3 = false;
                                    month4 = false;
                                    month5 = false;
                                    month6 = false;
                                    month7 = false;
                                    month1 = false;
                                    month9 = false;
                                    month10 = false;
                                    month11 = false;
                                    month12 = false;
                                  });
                                },
                                child: Text(
                                  months[7],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: month8 ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * 0.125,
                              height: size.height * 0.04,
                              child: FlatButton(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: month9
                                    ? Color(0xFF124d00)
                                    : Colors.grey[300],
                                onPressed: () {
                                  setState(() {
                                    month9 = !month9;
                                    month2 = false;
                                    month3 = false;
                                    month4 = false;
                                    month5 = false;
                                    month6 = false;
                                    month7 = false;
                                    month8 = false;
                                    month1 = false;
                                    month10 = false;
                                    month11 = false;
                                    month12 = false;
                                  });
                                },
                                child: Text(
                                  months[8],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: month9 ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * 0.12,
                              height: size.height * 0.04,
                              child: FlatButton(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: month10
                                    ? Color(0xFF124d00)
                                    : Colors.grey[300],
                                onPressed: () {
                                  setState(() {
                                    month10 = !month10;
                                    month2 = false;
                                    month3 = false;
                                    month4 = false;
                                    month5 = false;
                                    month6 = false;
                                    month7 = false;
                                    month8 = false;
                                    month9 = false;
                                    month1 = false;
                                    month11 = false;
                                    month12 = false;
                                  });
                                },
                                child: Text(
                                  months[9],
                                  style: TextStyle(
                                    color:
                                        month10 ? Colors.white : Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * 0.13,
                              height: size.height * 0.04,
                              child: FlatButton(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: month11
                                    ? Color(0xFF124d00)
                                    : Colors.grey[300],
                                onPressed: () {
                                  setState(() {
                                    month11 = !month11;
                                    month2 = false;
                                    month3 = false;
                                    month4 = false;
                                    month5 = false;
                                    month6 = false;
                                    month7 = false;
                                    month8 = false;
                                    month9 = false;
                                    month10 = false;
                                    month1 = false;
                                    month12 = false;
                                  });
                                },
                                child: Text(
                                  months[10],
                                  style: TextStyle(
                                    color:
                                        month11 ? Colors.white : Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * 0.125,
                              height: size.height * 0.04,
                              child: FlatButton(
                                shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: month12
                                    ? Color(0xFF124d00)
                                    : Colors.grey[300],
                                onPressed: () {
                                  setState(() {
                                    month12 = !month12;
                                    month2 = false;
                                    month3 = false;
                                    month4 = false;
                                    month5 = false;
                                    month6 = false;
                                    month7 = false;
                                    month8 = false;
                                    month9 = false;
                                    month10 = false;
                                    month11 = false;
                                    month1 = false;
                                  });
                                },
                                child: Text(
                                  months[11],
                                  style: TextStyle(
                                    color:
                                        month12 ? Colors.white : Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SfDateRangePicker(
                          controller: _controller,
                          initialSelectedDate: DateTime(2021, 01, 01),
                          todayHighlightColor: Colors.grey[400],
                          initialDisplayDate: DateTime(2021, 01, 01),
                          selectionColor: Color(0xFF124d00),
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
