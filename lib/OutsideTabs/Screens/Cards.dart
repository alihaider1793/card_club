import 'package:card_club/InsideTabs/tabs2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EditCard extends StatefulWidget {
  const EditCard({Key? key}) : super(key: key);

  @override
  _EditCardState createState() => _EditCardState();
}

class _EditCardState extends State<EditCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: SafeArea(
        child: Container(
          width: size.width * 1,
          height: size.height * 1,
          child: Scaffold(
            backgroundColor: const Color(0xFFf2cfd4),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            'assets/images/circularperson.png',
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Hi, Erika',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(width: 110),
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        Icon(
                          Icons.notifications_none_sharp,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: size.width * 1,
                    height: size.height * 0.7949,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 35),
                                SizedBox(
                                  width: size.width * 0.85,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        borderSide: const BorderSide(
                                            color: Colors.red),
                                      ),
                                      suffixIcon: Icon(
                                        Icons.search,
                                        color: Colors.grey,
                                      ),
                                      hintText: 'Search',
                                      fillColor: Colors.white,
                                      hintStyle:
                                          TextStyle(color: Colors.grey),
                                      filled: true,
                                    ),
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                  ),
                                ),
                                SizedBox(height: 35),
                                Text(
                                  'Best Seller Products',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15.0),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/shop_now_bg.png'),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 90, 10, 0),
                                      child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          //    side:  const BorderSide(color: Colors.grey)
                                        ),
                                        onPressed: () {},
                                        child: Text('Shop now'),
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 25),
                                Text(
                                  'Best Products',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                            child: Container(
                              color: Colors.transparent,
                              width: size.width * 1,
                              height: size.height * 0.5,
                              child: GridView.count(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                children: List.generate(
                                  50,
                                  (index) {
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Home(),
                                          ),
                                        );
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16.0),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/card2.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
