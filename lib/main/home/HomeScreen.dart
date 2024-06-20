import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8E3B6),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 50, left: 16, bottom: 16, right: 16),
        child: Column(
          children: [
            Row(children: [
              Text(
                'Good day, John Smith',
                style: TextStyle(
                  color: Color(0xff834D1E),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(
                Icons.notification_add,
                color: Color(0xff834D1E),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.settings,
                color: Color(0xff834D1E),
              )
            ]),
            SizedBox(height: 16),
            Container(
              width: 321,
              height: 162,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                      width: 321,
                      height: 162,
                      decoration: BoxDecoration(
                        color: Color(0xff834D1E),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Positioned(
                      top: 0,
                      child: Row(
                        children: [
                          Container(
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Best seller of the week",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xffFCF2D9),
                                    )),
                                Spacer(),
                                Text("Iced Coffee Sweet Heaven",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffFCF2D9),
                                    )),
                                Spacer(),
                                Row(
                                  children: [
                                    Text(
                                      "More info",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xffFCF2D9),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: InkWell(
                                        highlightColor: Colors.black54,
                                        splashColor: Colors.black26,
                                        child: Icon(
                                          Icons.next_plan,
                                          color: Color(0xffFCF2D9),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Image.asset('assets/home/coffe_icon_header.png'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text(
                  "This week’s recommendations",
                  style: TextStyle(
                    color: Color(0xff834D1E),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Color(0xff834D1E),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
