import 'package:flutter/material.dart';

import '../Reviews and Rating/rating and reviews.dart';

class PayoutHistory extends StatefulWidget {
  const PayoutHistory({Key? key}) : super(key: key);

  @override
  State<PayoutHistory> createState() => _PayoutHistoryState();
}

class _PayoutHistoryState extends State<PayoutHistory> {
  final List<String> name = <String>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        leadingWidth: 28, // <-- Use this

        //automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text("Payout History",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
          children: [
            Container(
              alignment: Alignment.topLeft  ,
              height: 35,child:
            ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10, left: 5),
                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFEFC55C),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xFFFFF8EB)
                    ),
                    child: Text("All",
                      style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),

                Container(
                    margin: EdgeInsets.only(top: 10, left: 5),
                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      //color: Color(0xFFFFF8EB)
                    ),
                    child: Text("Today",
                      style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                Container(
                    margin: EdgeInsets.only(top: 10, left: 5),
                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      //color: Color(0xFFFFF8EB)
                    ),
                    child: Text("This Week",
                      style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                 Container(
                    margin: EdgeInsets.only(top: 10, left: 5),
                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      //color: Color(0xFFFFF8EB)
                    ),
                    child: Text("This Month",
                      style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
              ],
            ),
            ),
            Expanded(child:
            ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(15),
                itemCount: 12,
                //itemExtent: 100,
                itemBuilder: (BuildContext context, int index) {
                  return
                    Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 15, left: 0),
                                  child: Text("John Matthew",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.topRight,
                                    child:  Padding(
                                      padding: EdgeInsets.only(top: 15, right: 0),
                                      child: Text("₹515",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 15, left: 5, right: 5),
                                  child: Icon(Icons.check_circle_outline, color: Colors.green, size: 15,),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 0, top: 7,bottom: 15),
                              child: IntrinsicHeight(
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("One Dish",
                                        style: TextStyle(fontSize: 12, color: Colors.grey),
                                      ),
                                      VerticalDivider(color: Colors.black,),
                                      Text("Nov 30, 2021",
                                        style: TextStyle(fontSize: 12, color: Colors.grey),
                                      ),
                                      VerticalDivider(color: Colors.black,),
                                      Text("11:45 PM",
                                        style: TextStyle(fontSize: 12, color: Colors.grey),
                                      ),
                                    ],
                                  )
                              ),
                            ),
                            Divider(
                              endIndent: 0,
                              indent: 0,
                            ),
                          ]
                      ),
                    );
                }
            ),
            )
          ],
        ),
    );
  }
}
