import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sauceman_chef/earnings%20&%20payouts/earnings.dart';
import 'package:sauceman_chef/earnings%20&%20payouts/payouts.dart';

class EarningsPayout extends StatefulWidget {
  const EarningsPayout({Key? key}) : super(key: key);

  @override
  State<EarningsPayout> createState() => _EarningsPayoutState();
}

class _EarningsPayoutState extends State<EarningsPayout> {
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
          title: Text("Earnings & Payouts",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
        child:
        Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15, right: 15, left: 15),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10, left: 10),
                            child: Image.asset("assets/another/img_6.png",
                              height: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5, top: 10),
                            child: Text("This Month Earnings",
                              style: TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 38, top: 5),
                          child: Text("₹ 75,425",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                          ),
                        ),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15,),
                                  child: Text("Earnings",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Color(0xFF4A4A4A)),),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 5),
                                  child: Text("Lorem ipsum dolor sit amet, consect",
                                    style: TextStyle(fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: IconButton(
                              icon: Icon(Icons.arrow_forward_ios_outlined, size: 15, color: Colors.black,),
                              onPressed: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => Earnings()));
                              },
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10, ),
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text("Payout History",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Color(0xFF4A4A4A)),),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 5, bottom: 15),
                                  child: Text("Lorem ipsum dolor sit amet, consect",
                                    style: TextStyle(fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: IconButton(
                              icon: Icon(Icons.arrow_forward_ios_outlined, size: 15, color: Colors.black,),
                              onPressed: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => PayoutHistory()));
                              },
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child:  Padding(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  child: Text("Recent Jobs",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                      child:  Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, left: 15),
                                    child: Text("John Matthew",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.topRight,
                                      child:  Padding(
                                        padding: EdgeInsets.only(top: 15, right: 15),
                                        child: Text("₹515",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15, top: 5),
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
                              Divider(),
                              Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 5, left: 15, bottom: 15),
                                          child: Container(
                                            //height: 30,
                                            //width: 100,
                                            color: Color(0xFFDBE7EB),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(top: 5, left: 5, bottom: 5),
                                                  child: Icon(Icons.access_time, color: Colors.blue, size: 20,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(top: 2.5, right: 7, left: 2, bottom: 3),
                                                  child: Text("In Progress",
                                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.blue),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ]
                              ),

                            ]
                        ),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                      child:  Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, left: 15),
                                    child: Text("John Matthew",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.topRight,
                                      child:  Padding(
                                        padding: EdgeInsets.only(top: 15, right: 15),
                                        child: Text("₹515",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15, top: 5),
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
                              Divider(),
                              Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 5, left: 15, bottom: 15),
                                          child: Container(
                                            //height: 30,
                                            //width: 100,
                                            color: Color(0xFFE0EEDD),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(top: 5, left: 5, bottom: 5),
                                                  child: Icon(Icons.check_circle_outline, color: Colors.green, size: 20,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(top: 5,left: 3, right: 7, bottom: 5),
                                                  child: Text("Completed",
                                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.green),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ]
                              ),

                            ]
                        ),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 10),
                      child:  Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, left: 15),
                                    child: Text("John Matthew",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.topRight,
                                      child:  Padding(
                                        padding: EdgeInsets.only(top: 15, right: 15),
                                        child: Text("₹515",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15, top: 5),
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
                              Divider(),
                              Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 5, left: 15, bottom: 15),
                                          child: Container(
                                            //height: 30,
                                            //width: 100,
                                            color: Color(0xFFE0EEDD),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(top: 5, left: 5, bottom: 5),
                                                  child: Icon(Icons.check_circle_outline, color: Colors.green, size: 20,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(top: 5,left: 3, right: 7, bottom: 5),
                                                  child: Text("Completed",
                                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.green),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ]
                              ),

                            ]
                        ),
                      )
                  ),
                ],
              )

            ]
        )
    )
    );
  }
}
