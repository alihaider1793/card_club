import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: size.width * 1,
            height: size.height * 1,
            color: Colors.purple,
            child: Column(
              children: [
                Container(
                  width: size.width * 1,
                  height: size.height * 0.5,
                  color: Colors.pink,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: size.width * 1,
                        height: size.height * 0.6,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Image(
                            image: AssetImage('assets/images/productcard.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 35),
                        child: SizedBox(
                          width: size.width * 0.2,
                          height: size.height * 0.063,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Card(
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                //    side:  const BorderSide(color: Colors.grey)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios_sharp,
                                    size: 20,
                                    color: const Color(0xFFF2CFD4),
                                  ),
                                  Text(
                                    'Back',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 23,
                                      color: const Color(0xFFF2CFD4),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width * 1,
                  height: size.height * 0.5,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 27, top: 10, right: 0, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Customizable digital eGift \nCards',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: size.width*0.28,),
                            Image(image: AssetImage('assets/images/like.png'))
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.07,
                        ),
                        Text(
                          "\$11.9",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF9E4C34),
                          ),
                        ),
                        SizedBox(height: size.height * 0.015),
                        Text(
                          "Description",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur"
                          "\nadipiscing elit,sed do eiusmod tempor"
                          "\nincididunt ut labore",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        Text(
                          "See More",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: size.height * 0.015),
                        Text(
                          "Comments",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: size.width * 0.35,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Colors.grey[500]!,
                                  ),
                                  //    side:  const BorderSide(color: Colors.grey)
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        Icons.remove,
                                        color: Colors.grey,
                                      ),
                                      onPressed: () =>
                                          setState(() => _itemCount--),
                                    ),
                                    Text(
                                      _itemCount.toString(),
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    IconButton(
                                        icon: new Icon(Icons.add,
                                            color: Colors.grey),
                                        onPressed: () =>
                                            setState(() => _itemCount++))
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: SizedBox(
                                  width: size.width * 0.54,
                                  height: size.height * 0.08,
                                  child: Card(
                                    color: const Color(0xFFf2cfd4),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Buy',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                          ],
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
    );
  }
}
