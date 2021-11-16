import 'package:card_club/pages/otp_verify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFf2cfee),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: ((MediaQuery.of(context).size.height * 10) / 100) - 1,
              ),
              Container(
                height: (MediaQuery.of(context).size.height * 55) / 100,
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(20.0),
                    topRight: const Radius.circular(20.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 38.0),
                      child: Text(
                        "Welcome Back!",
                        style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Enter your email',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Enter your password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 65.0),
                      child: ElevatedButton(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Container(
                            width: MediaQuery.of(context).size.width - 80,
                            child: Text(
                              "Sign in",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ),
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFFf2cfd4),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OTPVerify(),
                            ),
                          )
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1.0),
                child: Container(
                  height: (MediaQuery.of(context).size.height * 35) / 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: Text(
                          '- OR -',
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: ElevatedButton(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                            child: Container(
                              width: MediaQuery.of(context).size.width - 50,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    color: Colors.blue,
                                    size: 25.0,
                                  ),
                                  Text(
                                    "Sign in with Facebook",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                          ),
                          onPressed: () => {},
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: ElevatedButton(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                            child: Container(
                              width: MediaQuery.of(context).size.width - 50,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 20,
                                    child:
                                        Image.asset('assets/images/google.png'),
                                  ),
                                  Text(
                                    "Sign in with Google",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                          ),
                          onPressed: () => {},
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account? "),
                              Text(
                                "Sign up",
                                style: TextStyle(
                                  color: const Color(0xFFf2cfd4),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
