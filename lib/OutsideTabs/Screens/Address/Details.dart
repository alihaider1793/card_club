import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);
  static String? valx;

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(

      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(

          body: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.fromLTRB(25, 30, 25, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.17,
                      height: size.height * 0.05,
                      child: FlatButton(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Back',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        color: const Color(0xFFf2cfd4),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/images/person.png'),
                        radius: 120,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.grey[300]!),
                        ),
                        hintText: 'Name...',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey[300]!),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: 'Nickname...',
                                  labelStyle: TextStyle(
                                      color: Colors.grey, fontSize: 20)),
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Phone Number...',
                                labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Email...',
                                labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Street Address or P.O. Box',
                                labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Street Address or P.O. Box',
                                labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Company, Apartment, Floor, etc',
                                labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Zip/Postal Code',
                                labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'State/Province',
                                labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            ),
                            SizedBox(height: size.height * 0.015),
                            DropdownButtonFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusColor: Colors.grey,
                                hoverColor: Colors.grey,
                                suffixIconColor: Colors.grey,
                                hintText: "City",
                                fillColor: Colors.grey,
                                hintStyle: TextStyle(color: Colors.grey),
                                // filled: true,
                              ),
                              // value: _selected,
                              items: <String>[
                                'London',
                                'Liverpool',
                                'Manchester',
                                'Bristol',
                                'Others'
                              ].map((_value) {
                                return DropdownMenuItem(
                                    value: _value, child: Text(_value));
                              }).toList(),
                              onChanged: (val) => setState(() {
                                Details.valx = val.toString();
                              }),
                            ),
                            SizedBox(height: size.height * 0.015),
                            DropdownButtonFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                ),
                                focusColor: Colors.grey,
                                hoverColor: Colors.grey,
                                suffixIconColor: Colors.grey,
                                hintText: "Country",
                                fillColor: Colors.grey,
                                hintStyle: TextStyle(color: Colors.grey),
                                // filled: true,
                              ),
                              // value: _selected,
                              items: <String>[
                                'Germany',
                                'England',
                                'France',
                                'Italy',
                                'Others'
                              ].map((_value) {
                                return DropdownMenuItem(
                                    value: _value, child: Text(_value));
                              }).toList(),
                              onChanged: (val) => setState(() {
                                Details.valx = val.toString();
                              }),
                            ),
                            SizedBox(height: size.height * 0.015),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.015),
                    Center(
                      child: SizedBox(
                        width: size.width * 1,
                        height: size.height * 0.07,
                        child: FlatButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: Color(0xFFf2cfd4),
                            child: const Text(
                              'Save ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            )),
                      ),
                    ),
                    SizedBox(height: size.height * 0.015),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

