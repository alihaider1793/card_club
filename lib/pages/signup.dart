import 'package:card_club/pages/birthday.dart';
import 'package:card_club/pages/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  Future<void> _handleGoogleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  late Map<String, dynamic> _userData;

  //facebook handler
  Future<UserCredential> _handleFacebookLogin() async {
    final LoginResult loginResult =
        await FacebookAuth.instance.login(permissions: ['email']);
    if (loginResult == LoginStatus.success) {
      final userData = await FacebookAuth.instance.getUserData();
      _userData = userData;
    } else {
      print(loginResult.message);
    }

    final OAuthCredential oAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);
    return FirebaseAuth.instance.signInWithCredential(oAuthCredential);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: Container(
            color: const Color(0xFFf2cfd4),
            child: Column(
              children: <Widget>[
                SizedBox(height: size.height * 0.115),
                SingleChildScrollView(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 155.0),
                        child: Container(
                          height: size.height * 0.68,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 30),
                                child: Text(
                                  '- OR -',
                                  style: TextStyle(fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 15),
                                child: FlatButton(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 18, bottom: 18),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/images/facebook.png"),
                                        ),
                                        SizedBox(width: size.width * 0.08),
                                        Text(
                                          "Sign in with Facebook",
                                          style: TextStyle(
                                            fontSize: 17,
                                            letterSpacing: 0.5,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.grey[300]!,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(40)),
                                  onPressed: () => {
                                    _handleFacebookLogin(),
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 15),
                                child: FlatButton(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 18, bottom: 18, right: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/images/googlehd.png"),
                                        ),
                                        SizedBox(width: size.width * 0.08),
                                        Text(
                                          "Sign in with Google",
                                          style: TextStyle(
                                            fontSize: 17,
                                            letterSpacing: 0.5,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.grey[300]!,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(40)),
                                  onPressed: () => {
                                    _handleGoogleSignIn(),
                                  },
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  print('navigate to sign in page!');
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Signin(),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 30, top: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Already have an account? ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: size.width * 0.005),
                                      Text(
                                        "Sign in",
                                        style: TextStyle(
                                          color: const Color(0xFFf2cfd4),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: size.height * 0.02),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * 0.58,
                        width: MediaQuery.of(context).size.width,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            topRight: const Radius.circular(10.0),
                            bottomLeft: const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: size.height * 0.03),
                            Text(
                              "Welcome!",
                              style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 8.0),
                              child: Text(
                                "Create your Account",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(30, 10, 30, 15),
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter your full name',
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400]),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey[200]!),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.green),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: size.height * 0.005),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter your email',
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400]),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey[200]!),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.green),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: size.height * 0.005),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter your password',
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400]),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey[200]!),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.green),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: size.height * 0.005),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Confirm password',
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400]),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey[200]!),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.green),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25.0),
                              child: Container(
                                width: size.width * 0.8,
                                height: size.height * 0.08,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.purple[100]!,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(40)),
                                  color: const Color(0xFFF2CFD4),
                                  onPressed: () => {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Birthday(),
                                      ),
                                    )
                                  },
                                  child: Text(
                                    "Create account",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
