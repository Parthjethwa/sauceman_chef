import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sauceman_chef/earnings%20&%20payouts/earnings%20n%20payout.dart';

import '../feed/chef_details.dart';
import 'General Issues.dart';
import 'notification.dart';
import 'past services.dart';

class RecentService extends StatefulWidget {
  const RecentService({Key? key}) : super(key: key);

  @override
  State<RecentService> createState() => _RecentServiceState();
}

class _RecentServiceState extends State<RecentService> {
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
          title: Text("Help & Support",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          backgroundColor: Colors.white,
        ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15),
            alignment: Alignment.topLeft,
            child: Text("Recent Service",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.black),
            ),
          ),
          GestureDetector(
            onTap:() {
             /* Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => EarningsPayout()));
              */
            },
            child: Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15),
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
                              padding: EdgeInsets.only(top: 10, left: 15),
                              child: Text("Customer Name",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                child:  Padding(
                                  padding: EdgeInsets.only(top: 15, right: 15),
                                  child: Image.asset("assets/images/img.png",
                                    height: 20,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 0, left: 15),
                            child: Text("Neeladri Main Road",
                              style: TextStyle( fontSize: 12, color: Colors.grey),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Divider(color: Colors.grey, thickness: 0.5,),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 5, left: 15, bottom: 5),
                                child: Text("Customer Bill Amount",
                                  style: TextStyle( fontSize: 12, color: Colors.grey),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20, top: 5, bottom: 5),
                              child: Text("₹515",
                                style: TextStyle( fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Divider(color: Colors.grey, thickness: 0.5,),
                        ),
                        IntrinsicHeight(
                            child:Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 5,left: 15),
                                      child: Text("Booking on",
                                        style: TextStyle( fontSize: 12, color: Colors.grey),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5, right: 40),
                                      child: Text("Booking Closed on",
                                        style: TextStyle( fontSize: 12, color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                                VerticalDivider(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 5,left: 15, bottom: 15),
                                      child: Text("02 Feb 2021, 12:37 PM",
                                        style: TextStyle( fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5, right:15, bottom: 15),
                                      child: Text("02 Feb 2021, 12:37 PM",
                                        style: TextStyle( fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                        )
                      ]
                  ),
                )
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 15),
                child: Text("Past Services",
                style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, right: 0),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios_outlined, size: 15, color: Colors.black,),
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => PastService()));
                  },
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 15, top: 15),
            child: Text("Need Help Related to?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.black),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 15),
                child: Text("General Issues",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, right: 5),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios_outlined, size: 15, color: Colors.black,),
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => GeneralIssue()));
                  },
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Divider(thickness: 0.5, color: Colors.grey[350],),
          ),          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0, left: 15),
                child: Text("Profile",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0, right: 0),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios_outlined, size: 15, color: Colors.black,),
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => ChefDetails()));
                  },
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Divider(thickness: 0.5, color: Colors.grey[350],),
          ),          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0, left: 15),
                child: Text("Earnings & payouts",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0, right: 0),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios_outlined, size: 15, color: Colors.black,),
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => EarningsPayout()));
                  },
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Divider(thickness: 0.5, color: Colors.grey[350],),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0, left: 15),
                child: Text("Other",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:0, right: 0),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios_outlined, size: 15, color: Colors.black,),
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Notificationlast()));
                  },
                ),
              )
            ],
          ),
    ],
      ),
    );
  }
}
