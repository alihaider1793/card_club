import 'package:card_club/pages/birthday.dart';
import 'package:card_club/pages/enable_notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPVerify extends StatelessWidget {
  const OTPVerify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SingleChildScrollView(
          child: Container(
            width: size.width * 1,
            height: size.height * 1,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "OTP sent!",
                        style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: size.height * 0.035),
                      Text(
                        "Enter the 4-digit code we sent you at XXXXXXXXXX",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 50, left: 60.0, right: 60.0),
                        child: PinCodeTextField(
                          appContext: context,
                          pastedTextStyle: TextStyle(
                            color: Colors.green.shade600,
                            fontWeight: FontWeight.bold,
                          ),
                          length: 4,
                          obscureText: false,
                          pinTheme: PinTheme(
                              shape: PinCodeFieldShape.underline,
                              activeFillColor: Colors.white,
                              selectedColor: Colors.white,
                              activeColor: Colors.white,
                              inactiveFillColor: Colors.white,
                              selectedFillColor: Colors.white,
                              inactiveColor: Colors.grey),
                          cursorColor: Colors.black,
                          animationDuration: Duration(milliseconds: 300),
                          enableActiveFill: true,
                          errorAnimationController: null,
                          controller: null,
                          keyboardType: TextInputType.phone,
                          onCompleted: (v) {
                            print("Completed");
                          },
                          onChanged: (value) {
                            print(value);
                          },
                          beforeTextPaste: (text) {
                            print("Allowing to paste $text");
                            //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                            //but you can show anything you want here, like your pop up saying wrong paste format or etc
                            return true;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 60.0, left: 30, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: size.width * 0.35,
                              height: size.height * 0.1,
                              child: Opacity(
                                opacity: 0.6,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  color: const Color(0xFFF2CFD4),
                                  onPressed: () => {},
                                  child: Text(
                                    "Resend OTP",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * 0.45,
                              height: size.height * 0.1,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: const Color(0xFFF2CFD4),
                                onPressed: () {
                                  FocusScopeNode currentFocus =
                                      FocusScope.of(context);
                                  if (!currentFocus.hasPrimaryFocus) {
                                    currentFocus.unfocus();
                                  }
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          EnableNotification(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Confirm",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
