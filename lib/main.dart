import 'package:card_club/pages/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CARD CLUB',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'CARD CLUB'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: const Color(0xFFf2cfd4),
        child: Column(
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height * 60) / 100,
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  bottomLeft: const Radius.circular(40.0),
                  bottomRight: const Radius.circular(40.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset('assets/images/launch.png'),
                  )
                ],
              ),
            ),
            Container(
              height: (MediaQuery.of(context).size.height * 40) / 100,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFFf2cfd4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: Text(
                      'Hi, Nice to Meet You!',
                      style: TextStyle(fontSize: 33),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: Text(
                      "Let's Create an Account for You!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: Container(
                      width: size.width*0.5,
                      // ignore: deprecated_member_use
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signup(),
                              ),
                            );
                          },
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 20,left: 7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Let's Start",
                                  style: TextStyle(
                                    fontSize: 22,
                                    //fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: size.width*0.03),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
