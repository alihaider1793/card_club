import 'package:flutter/material.dart';

import 'Screens/ImagePage.dart';
import 'Screens/PaintPage.dart';
import 'Screens/StickersPage.dart';
import 'Screens/TextPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          bottomNavigationBar: menu(),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 1,
                  child: PaintPage()),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 1,
                  child: const TextPage()),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 1,
                  child: const StickersPage()),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 1,
                  child: const ImagePage()),
            ],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 0.11,
        //showTabs ?
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: const TabBar(
            indicatorWeight: 2,
            labelColor: Colors.grey,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.all(10.0),
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text(
                  'Paint',
                  style: TextStyle(fontSize: 12),
                ),
                // text: "Investing",
                iconMargin: EdgeInsets.all(8),
                icon: Icon(Icons.brush_outlined),
              ),
              Tab(
                child: Text(
                  'Text',
                  style: TextStyle(fontSize: 12),
                ),
                iconMargin: EdgeInsets.all(8),
                icon: Icon(Icons.book),
                // icon: CircleAvatar(
                //   backgroundImage: AssetImage('lib/assets/images/discover.png'),
                //   backgroundColor: Colors.white,
                //   radius: 20,
                // ),
              ),
              Tab(
                child: Text(
                  'Stickers',
                  style: TextStyle(fontSize: 12),
                ),

                iconMargin: EdgeInsets.all(8),
                icon: Icon(Icons.face),
                // icon: CircleAvatar(
                //   backgroundImage: AssetImage('lib/assets/images/coin.png'),
                //   backgroundColor: Colors.white,
                //   radius: 20,
                // ),
              ),
              Tab(
                child: Text(
                  "Photos",
                  style: TextStyle(fontSize: 12),
                ),
                iconMargin: EdgeInsets.all(8),
                icon: Icon(Icons.photo),
                // icon: CircleAvatar(
                //   backgroundImage: AssetImage('lib/assets/images/ipo.png'),
                //   backgroundColor: Colors.white,
                //   radius: 20,
                // ),
              ),
            ],
          ),
        ),
        //: null
      ),
    );
  }
}
