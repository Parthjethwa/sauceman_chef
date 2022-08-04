

import 'dart:ui';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sauceman_chef/Order%20history/booking%20history.dart';
import 'package:sauceman_chef/Order%20history/cancelled%20order.dart';
import 'package:sauceman_chef/Order%20history/completed%20order.dart';
import 'package:sauceman_chef/Reviews%20and%20Rating/rating%20and%20reviews.dart';
import 'package:sauceman_chef/calender/date.dart';
import 'package:sauceman_chef/calender/set%20leave.dart';
import 'package:sauceman_chef/code.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:sauceman_chef/earnings%20&%20payouts/earnings%20n%20payout.dart';
import 'package:sauceman_chef/earnings%20&%20payouts/earnings.dart';
import 'package:sauceman_chef/earnings%20&%20payouts/payouts.dart';
import 'package:sauceman_chef/feed/bestdishes.dart';
import 'package:sauceman_chef/feed/chef_details.dart';
import 'package:sauceman_chef/feed/document_details.dart';
import 'package:sauceman_chef/help%20&%20support/recent%20service.dart';
import 'package:sauceman_chef/totalsale.dart';
import 'package:slider_button/slider_button.dart';
import 'package:dotted_line/dotted_line.dart';
import 'dart:math' as math;



import 'accepted.dart';
import 'tab1/occassion.dart';
import 'ongoing.dart';



class DataList {
  DataList(this.title, [this.children = const <DataList>[]]);

  final String title;
  final List<DataList> children;
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),

  ];
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
      drawerScrimColor: Colors.black,
    );
  }
  Container buildMyNavBar(BuildContext context) {

    return Container(
      height: 55,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(right:0),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.end,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    pageIndex = 0;
                  });
                },
                child: Image.asset("assets/bnb/img.png", height: 20,),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 10),
                child: Text("Bookings", style: TextStyle(fontSize: 10, color: Colors.grey),),
              )
            ],
          ),
    ),
         /* IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
              Icons.collections_bookmark_outlined,
              color: Colors.black,
              size: 35,

            )
                :  Icon(
              Icons.collections_bookmark_outlined,
              color: Colors.grey,
              size: 35,
              semanticLabel: "Bookings",
            ),
          ),
          */
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  pageIndex = 1;
                });
              },
              child: Image.asset("assets/bnb/img_1.png", height: 20,),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, bottom: 10),
              child: Text("Insight", style: TextStyle(fontSize: 10, color: Colors.grey),),
            )
          ],
        ),
          Container(
            //alignment: Alignment.bottomCenter,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                  child: Image.asset("assets/bnb/img_2.png", height: 20,),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: Text("More", style: TextStyle(fontSize: 10, color: Colors.grey),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool status= false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: new Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/6.5,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 15),
                    child: FlutterSwitch(
                      activeText: "Online",
                      inactiveText: "Offline",
                      value: status,
                      valueFontSize: 10.0,
                      width: 80,
                      height: 30,
                      borderRadius: 20.0,
                      showOnOff: true,
                      onToggle: (val) {
                        setState(() {
                          status = val;
                        });
                      },
                      activeColor: Colors.green,
                      activeToggleColor: Colors.white,
                      toggleColor: Colors.grey,
                      inactiveColor: Colors.white,
                      inactiveSwitchBorder: Border.all(color: Colors.grey),
                      inactiveTextColor: Colors.grey,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(bottom: 20, right: 15),
                      alignment: Alignment.bottomRight,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Image.asset("assets/images/calender.png",
                              height: 20,
                              width: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right:0),
                            child: Image.asset("assets/images/notify.png",
                              height: 30,
                              width: 27,
                            ),
                          ),
                        ],
                      )
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: TabBar(
                indicatorColor: Colors.black,
                tabs: [
                  Tab(child: Text("Accepted", style: TextStyle(fontSize:14, color: Colors.black,),),),
                  Tab(child: Text("Ongoing", style: TextStyle(fontSize:14, color: Colors.black,),),),
                ],
              ),
            ),
            Expanded(
              child: TabBarView( // <-- Your TabBarView
                children: [
              Stack(
              children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child:
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          height: 40,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15, left: 15),
                                child: Container(
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
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15, left: 5),
                                child: Container(
                                  padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,

                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    //color: Color(0xFFFFF8EB)
                                  ),
                                  child: Text("Today",
                                    style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15, left: 5),
                                child: Container(
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
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15, left: 5),
                                child: Container(
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
                              )
                            ],
                          ),
                        ),
                        ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 15, right: 15),
                              child: Container(
                                //height: MediaQuery.of(context).size.height/5.5,
                                //width: MediaQuery.of(context).size.width/1,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 10, left: 13),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Customer Name",
                                            style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Text("Today", style: TextStyle(fontSize:12,color: Colors.grey),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 13),
                                            child: Text("Usmanpura, Ahmedabad, Gujarat",style: TextStyle(fontSize:12,color: Colors.grey)),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Text("12:30 PM", style: TextStyle(color: Colors.black, fontSize: 12),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 13, right: 13, top: 5),
                                      child: Divider(
                                        color: Colors.grey,
                                        thickness: 0.5,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10,),
                                          child: Image.asset("assets/images/occassion.png",
                                            height: MediaQuery.of(context).size.height/17,
                                            width: MediaQuery.of(context).size.width/5,
                                          ),
                                        ),

                                        IconButton(
                                            icon: Icon(Icons.arrow_forward_ios_outlined, size: 20, color: Colors.black,),
                                            onPressed: () {  Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) => Accepted())); }
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                              child: Container(
                                //height: MediaQuery.of(context).size.height/5.5,
                                //width: MediaQuery.of(context).size.width/1,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 10, left: 13),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Customer Name",
                                            style: TextStyle( fontSize: 14, fontWeight:FontWeight.bold),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Text("Today", style: TextStyle(fontSize:12,color: Colors.grey),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 13),
                                            child: Text("Usmanpura, Ahmedabad, Gujarat",style: TextStyle(fontSize:12,color: Colors.grey)),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Text("12:30 PM", style: TextStyle(fontSize:12,color: Colors.black),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 13, right: 13, top: 5),
                                      child: Divider(
                                        color: Colors.grey,
                                        thickness: 0.5,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10,),
                                          child: Image.asset("assets/images/img.png",
                                            height: MediaQuery.of(context).size.height/17,
                                            width: MediaQuery.of(context).size.width/5,
                                          ),
                                        ),

                                        IconButton(
                                            icon: Icon(Icons.arrow_forward_ios_outlined, size: 20, color: Colors.black,),
                                            onPressed: () {  Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) => Occassion())); }
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                              child: Container(
                                //height: MediaQuery.of(context).size.height/5.5,
                                //width: MediaQuery.of(context).size.width/1,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 10, left: 13),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Customer Name",
                                            style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Text("Today", style: TextStyle(fontSize:12,color: Colors.grey),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 13),
                                            child: Text("Usmanpura, Ahmedabad, Gujarat",style: TextStyle(fontSize:12,color: Colors.grey)),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Text("12:30 PM", style: TextStyle(fontSize:12,color: Colors.black),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 13, right: 13, top: 5),
                                      child: Divider(
                                        color: Colors.grey,
                                        thickness: 0.5,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10,),
                                          child: Image.asset("assets/images/img.png",
                                            height: MediaQuery.of(context).size.height/17,
                                            width: MediaQuery.of(context).size.width/5,
                                          ),
                                        ),

                                        IconButton(
                                            icon: Icon(Icons.arrow_forward_ios_outlined, size: 20, color: Colors.black,),
                                            onPressed: () {  Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) => Accepted())); }
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                              child: Container(
                                //height: MediaQuery.of(context).size.height/5.5,
                                //width: MediaQuery.of(context).size.width/1,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 10, left: 13),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Customer Name",
                                            style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Text("Today", style: TextStyle(fontSize:12,color: Colors.grey),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 13),
                                            child: Text("Usmanpura, Ahmedabad, Gujarat",style: TextStyle(fontSize:12,color: Colors.grey)),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Text("12:30 PM", style: TextStyle(fontSize:12,color: Colors.black),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 13, right: 13, top: 0),
                                      child: Divider(
                                        color: Colors.grey,
                                        thickness: 0.5,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10,),
                                          child: Image.asset("assets/images/img.png",
                                            height: MediaQuery.of(context).size.height/17,
                                            width: MediaQuery.of(context).size.width/5,
                                          ),
                                        ),

                                        IconButton(
                                            icon: Icon(Icons.arrow_forward_ios_outlined, size: 20, color: Colors.black,),
                                            onPressed: () {  Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) => Accepted())); }
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 15),
                              child: Container(
                                //height: MediaQuery.of(context).size.height/5.5,
                                //width: MediaQuery.of(context).size.width/1,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 10, left: 13),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Customer Name",
                                            style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Text("Today", style: TextStyle(fontSize:12,color: Colors.grey),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 13),
                                            child: Text("Usmanpura, Ahmedabad, Gujarat",style: TextStyle(fontSize:12,color: Colors.black)),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Text("12:30 PM", style: TextStyle(fontSize:12,color: Colors.grey),),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 13, right: 13, top: 5),
                                      child: Divider(
                                        color: Colors.grey,
                                        thickness: 0.5,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10,),
                                          child: Image.asset("assets/images/occassion.png",
                                            height: MediaQuery.of(context).size.height/17,
                                            width: MediaQuery.of(context).size.width/5,
                                          ),
                                        ),

                                        IconButton(
                                            icon: Icon(Icons.arrow_forward_ios_outlined, size: 20, color: Colors.black,),
                                            onPressed: () {  Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) => Occassion())); }
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                           ]
                    ),
              ),

                            Container(
                                alignment: Alignment.bottomLeft,
                               child:
                                 Padding(
                                   padding: EdgeInsets.only(left: 15, top: 20, bottom: 15, right: 15),
                                   child: Container(
                                     //alignment: Alignment.bottomRight,
                                     height: 40,
                                     width: 85,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(30),
                                       color: Colors.black,
                                     ),
                                     child:Row(
                                       //crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Padding(
                                           padding: EdgeInsets.only(left: 10),
                                           child:  Image.asset("assets/images/img_16.png",
                                             height: 22,
                                             width: 22,
                                           ),
                                         ),
                                         Padding(
                                             padding: EdgeInsets.only(left: 5),
                                             child:  Text("Help",
                                               style: TextStyle(fontSize: 12, color: Colors.white),
                                             )
                                         ),
                                       ],
                                     ),
                                   ),
                                 ),
                             ),

                          ],
                    ),
                  OnGoing()
                ],
              ),
            ),
          ],
        ),      ),
    );
  }
}

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------


class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  late PageController _pageController;
  int activePageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }
  @override
  Widget build(BuildContext context) {
    //final space = SizedBox(height: 50);
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          automaticallyImplyLeading: false,
          title: Text("Insights",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF4A4A4A)),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(top: 20, left: 10, right:5),
                          child:  Container(
                              alignment: Alignment.topCenter,
                              height: MediaQuery.of(context).size.height/10,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child:
                                   Padding(
                                          padding:EdgeInsets.only(top: 15,left:10 ),
                                          child: Text("Total Revenue",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize:14, color:Colors.grey),
                                          ),
                                        ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left:10),
                                    alignment: Alignment.centerLeft,
                                    child:DottedLine(//dashLength: 20,
                                      dashColor: Colors.grey,
                                      lineThickness: 2,
                                      lineLength: 95,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 10, top: 5),
                                        child: Text("₹ 75,425",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(left: 5, top: 5),
                                          child: Image.asset("assets/images/up5%.png",
                                            height: 21,
                                          )
                                      )
                                    ],
                                  )
                                ],
                              )
                          ),
                        )
                    ),
                    Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(top:20, right: 10, left: 5),
                          child:Container(
                              height: MediaQuery.of(context).size.height/10,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child:Padding(
                                      padding:EdgeInsets.only(top: 15,left: 10 ),
                                      child: Text("Bookings Recived",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize:14, color:Colors.grey),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left:10),
                                    alignment: Alignment.centerLeft,
                                    child:DottedLine(//dashLength: 20,
                                      dashColor: Colors.grey,
                                      lineThickness: 2,
                                      lineLength: 120 ,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 10, top: 5),
                                          child: Text("120",
                                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                                          )
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(left: 5, top: 5),
                                          child: Image.asset("assets/images/up5%.png",
                                            height: 21,
                                          )
                                      )
                                    ],
                                  )
                                ],
                              )
                          ),
                        )
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(top: 20, left: 10, right:5),
                          child:  Container(
                              alignment: Alignment.topCenter,
                              height: MediaQuery.of(context).size.height/10,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child:Padding(
                                      padding:EdgeInsets.only(top: 15,left:10 ),
                                      child: Text("Occasions",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize:14, color:Colors.grey),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left:10),
                                    alignment: Alignment.centerLeft,
                                    child:DottedLine(//dashLength: 20,
                                      dashColor: Colors.grey,
                                      lineThickness: 2,
                                      lineLength: 75,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 10, top: 5),
                                        child: Text("34",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(left: 5, top: 5),
                                          child: Image.asset("assets/images/up5%.png",
                                            height: 21,
                                          )
                                      )
                                    ],
                                  )
                                ],
                              )
                          ),
                        )
                    ),
                    Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(top:20, right: 10, left: 5),
                          child:Container(
                              height: MediaQuery.of(context).size.height/10,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child:Padding(
                                      padding:EdgeInsets.only(top: 15,left: 10 ),
                                      child: Text("Cancelled",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize:14, color:Colors.grey),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left:10),
                                    alignment: Alignment.centerLeft,
                                    child:DottedLine(//dashLength: 20,
                                      dashColor: Colors.grey,
                                      lineThickness: 2,
                                      lineLength: 70,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 10, top: 5),
                                          child: Text("13",
                                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                                          )
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(left: 5, top: 5),
                                          child: Image.asset("assets/images/up5%.png",
                                            height: 21,
                                          )
                                      )
                                    ],
                                  )
                                ],
                              )
                          ),
                        )
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 10, right: 10),
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
                                  padding: EdgeInsets.only(left: 10, top: 5),
                                  child: Image.asset("assets/images/img_17.png",
                                    height: 25,
                                    //width: 10,
                                  )
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 10, top: 5, bottom: 0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => TotalSale()));
                                    },
                                    child: Text("Delivered Jobs",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Color(0xFF4A4A4A)),
                                    ),
                                  )
                              ),
                              Expanded(
                                  child:Container(
                                      alignment: Alignment.centerRight,
                                      child:Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: IconButton(
                                            icon: Icon(Icons.arrow_forward_ios_outlined, size: 13, color: Colors.black,),
                                            onPressed: () {  Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) => TotalSale())); },
                                          )
                                      )
                                  )
                              )
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                          ),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child:Padding(
                                  padding: EdgeInsets.only(left: 15, top: 5),
                                  child: Text("Today",
                                      style: TextStyle(fontSize: 12, color: Colors.grey)
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 5),
                                  child: Text("₹ 23,000",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 11, top: 5, bottom: 5),
                                      child: Image.asset("assets/images/packet.png",
                                          height: 20
                                      )
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 6, bottom: 5),
                                    child: Text("8 Orders",
                                        style: TextStyle(fontSize: 12, color: Colors.grey)
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                          ),
            IntrinsicHeight(
              child:
                          Row(
                            children: [
                              Expanded(
                                child:
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15, top: 10),
                                    child: Text("This week 1Mar-7Mar",
                                        style: TextStyle(fontSize: 12, color: Colors.grey)
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15, top: 10),
                                      child: Text("₹ 10,000",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 11, top: 5, bottom: 10),
                                          child: Image.asset("assets/images/packet.png",
                                              height: 20
                                          )
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 6, bottom: 10),
                                        child: Text("8 Orders",
                                            style: TextStyle(fontSize: 12, color: Colors.grey)
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              ),
                              VerticalDivider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                              Expanded(
                                child:
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15, top:10),
                                    child: Text("This month 01-30 Jun",
                                        style: TextStyle(fontSize: 12, color: Colors.grey)
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15, top: 10),
                                      child: Text("₹ 10,000",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 11, top: 5, bottom: 10),
                                          child: Image.asset("assets/images/packet.png",
                                              height: 20
                                          )
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 6, bottom: 10),
                                        child: Text("8 Orders",
                                            style: TextStyle(fontSize: 12, color: Colors.grey)
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                              )
                            ],
                          )
            )
                        ],
                      )
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Image.asset("assets/images/img_19.png",
                        height: 65,
                        width: double.infinity
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(top: 30, left: 10, right: 10),
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
                                      padding: EdgeInsets.only(left: 10, top: 5),
                                      child: Image.asset("assets/images/rj.png",
                                        height: 25,
                                        //width: 10,
                                      )
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 10, top: 5, bottom: 0),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) => TotalSale()));
                                        },
                                        child: Text("Rejected Jobs",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color:Color(0xFF4A4A4A)),
                                        ),
                                      )
                                  ),
                                  Expanded(
                                      child:Container(
                                          alignment: Alignment.centerRight,
                                          child:Padding(
                                              padding: EdgeInsets.only(top: 5),
                                              child: IconButton(
                                                icon: Icon(Icons.arrow_forward_ios_outlined, size: 13, color: Colors.black,),
                                                onPressed: () {  Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) => TotalSale())); },
                                              )
                                          )
                                      )
                                  )
                                ],
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: 0.5,
                              ),
                              Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child:Padding(
                                      padding: EdgeInsets.only(left: 15, top: 5),
                                      child: Text("Today",
                                          style: TextStyle(fontSize: 12, color: Colors.grey)
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15, top: 5),
                                      child: Text("₹ 0",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 11, top: 5, bottom: 5),
                                          child: Image.asset("assets/images/packet.png",
                                              height: 20
                                          )
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 6, bottom: 5),
                                        child: Text("0 Orders",
                                            style: TextStyle(fontSize: 12, color: Colors.grey)
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.grey,
                                    thickness: 0.5,
                                  ),
                                  IntrinsicHeight(
                                      child:
                                      Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child:Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(left: 15, top: 10),
                                                  child: Text("This week 1Mar-7Mar",
                                                      style: TextStyle(fontSize: 12, color: Colors.grey)
                                                  ),
                                                ),
                                                Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(left: 15, top: 10),
                                                    child: Text("₹ 1,000",
                                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                        padding: EdgeInsets.only(left: 11, top: 5, bottom: 10),
                                                        child: Image.asset("assets/images/packet.png",
                                                            height: 20
                                                        )
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(top: 6, bottom: 10),
                                                      child: Text("1 Orders",
                                                          style: TextStyle(fontSize: 12, color: Colors.grey)
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                                padding: EdgeInsets.only(left: 10),
                                                child:VerticalDivider(
                                                  color: Colors.grey,
                                                  thickness: 0.5,
                                                ),
                                              ),
                                          Expanded(
                                            child:Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(left: 0, top:10),
                                                  child: Text("This month 01-30 Jun",
                                                      style: TextStyle(fontSize: 12, color: Colors.grey)
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(left: 1, top: 10),
                                                  child: Text("₹ 2400",
                                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                        padding: EdgeInsets.only(left: 1, top: 5, bottom: 10),
                                                        child: Image.asset("assets/images/packet.png",
                                                            height: 20
                                                        )
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(top: 6, bottom: 10),
                                                      child: Text("2 Orders",
                                                          style: TextStyle(fontSize: 12, color: Colors.grey)
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            )
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ]
                        )
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(top: 30, left: 10, right: 10),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 10, top: 15, bottom: 5),
                                      child: Image.asset("assets/images/fp.png",
                                        height: 25,
                                        //width: 10,
                                      )
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 10, top: 15, bottom: 5),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) => TotalSale()));
                                        },
                                        child: Text("Food Preparation time",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Color(0xFF4A4A4A)),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: 0.5,
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
                                      child: Text("82%",
                                          style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)
                                      )
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 3),
                                      child: Text("Orders prepared in time",
                                          style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold)
                                      )
                                  )
                                ]
                              ),
                              IntrinsicHeight(
                                  child:
                                  Row(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(top: 5, left: 10, bottom: 10),
                                                  child: Image.asset("assets/images/itb.png",
                                                      height: 25
                                                  )
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 5, bottom: 10, left : 5),
                                                child: Text("In time bookings 4",
                                                    style: TextStyle(fontSize: 12, color: Colors.grey)
                                                ),
                                              ),
                                            ]
                                          )
                                        ),
                                       Padding(
                                         padding: EdgeInsets.only(bottom:10),
                                         child: VerticalDivider(
                                           color: Colors.grey,
                                           thickness: 1,
                                         ),
                                       ),
                                        Expanded(
                                          child:Row(
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(top: 5, bottom: 10, left: 0),
                                                  child: Image.asset("assets/images/db.png",
                                                      height: 25
                                                  )
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 4, bottom: 10, left: 5),
                                                child: Text("Delayed bookings 4",
                                                    style: TextStyle(fontSize: 12, color: Colors.grey)
                                                ),
                                              ),
                                            ]
                                          )
                                        )
                                      ]
                                  )
                              )
                            ]
                        )
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 15),
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
                                      padding: EdgeInsets.only(left: 10, top: 15, bottom:5),
                                      child: Image.asset("assets/images/sad.png",
                                        height: 25,
                                        //width: 10,
                                      )
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 10, top: 15, bottom: 5),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) => ChefDetails()));
                                        },
                                        child: Text("Customer Complaints",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,color:Color(0xFF4A4A4A)),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: 0.5,
                              ),
                              Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
                                        child: Text("2",
                                            style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)
                                        )
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(top: 10, bottom: 10, left: 3),
                                        child: Text("bookings with customer complaints",
                                            style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold)
                                        )
                                    )
                                  ]
                              ),
                              Column(
                                children: [
                                  Container(
                                    child:Row(
                                      children:[
                                        Padding(
                                            padding: EdgeInsets.only(top: 10, left: 10),
                                          child: Image.asset("assets/images/MSG.png",
                                          height: 25,
                                          ),
                                        ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5, top:10),
                                            child: Text("food was salty",
                                            style: TextStyle(fontSize: 12, color: Colors.grey)
                                            )
                                        ),
                                        Expanded(
                                          child: Container(
                                            alignment:Alignment.centerRight,
                                           child: Padding(
                                              padding: EdgeInsets.only(top: 10, left: 10),
                                              child: Image.asset("assets/images/packet.png",
                                                height: 25,
                                              ),
                                            ),
                                          )
                                        ),
                                        Padding(
                                                  padding: EdgeInsets.only(left: 5, top:10, right: 15),
                                                  child: Text("1 order",
                                                      style: TextStyle(fontSize: 12, color: Colors.grey)
                                                  )
                                        )
                                      ]
                                    )
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    //margin: EdgeInsets.only(bottom:15),
                                      child:Row(
                                          children:[
                                            Padding(
                                              padding: EdgeInsets.only(top: 10, left: 10, bottom: 15),
                                              child: Image.asset("assets/images/MSG.png",
                                                height: 25,
                                              ),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(left: 5, top:10, bottom: 15),
                                                child: Text("Not wearing mask",
                                                    style: TextStyle(fontSize: 12, color: Colors.grey)
                                                )
                                            ),
                                            Expanded(
                                                child: Container(
                                                  alignment:Alignment.centerRight,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(top: 10, left: 10, bottom: 15),
                                                    child: Image.asset("assets/images/packet.png",
                                                      height: 25,
                                                    ),
                                                  ),
                                                )
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(left: 5, top:10, right: 15, bottom: 15),
                                                child: Text("1 order",
                                                    style: TextStyle(fontSize: 12, color: Colors.grey)
                                                )
                                            )
                                          ]
                                      )
                                  )
                                ],
                              )
                            ]
                        )
                    )
                )
              ]
          ),
        )
    );
  }
}

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  late PageController _pageController;
  int activePageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }
  late final String title;
  late final List<DataList> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.green,
      appBar: AppBar(
        elevation: 0.5,
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text("Profile",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body:
          ExpandableTheme(
            data: ExpandableThemeData(
              iconColor: Colors.black,
              useInkWell: true,
              //hasIcon: true,
              expandIcon: Icons.arrow_forward_ios_rounded,
              iconSize: 15,
              iconPadding: EdgeInsets.only(),
                collapseIcon: Icons.keyboard_arrow_up,


            ),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
                  //color: Colors.blue,
                  child: Row(
                    children: [
                      Image.asset("assets/profile/img_1.png", height: 60,),
                      Padding(
                        padding: EdgeInsets.only(top: 0, left: 20),
                        child: Text("Jane Cooper",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
                        ),
                      )
                    ],
                  )
                ),
                Card1(),
                Card2(),
                Card3(),
                Card4(),
                Card5(),
                Card6(),
                Card7(),

              ],
            ),
      )
    );
  }
}

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
        child:  Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Image.asset("assets/profile/img.png", height: 25,),
                ),
                Container(
                  //color: Colors.red,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 15, top: 0),
                  child: Text("Profile Details",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ],
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  //headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.only(left: 40, right: 5, bottom: 0),
                    child:Row(
                      children: [
                        Text(
                            "Chef, service, document details",
                            style: TextStyle(color: Colors.grey, fontSize: 12,)
                        )
                      ],
                    )),

                collapsed: Text(
                  "",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //for (var _ in Iterable.generate(1))
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => ChefDetails()));
                        },
                        child: Padding(
                            padding: EdgeInsets.only(top: 10,bottom: 0, left: 30),
                            child: Text(
                              "Chef Details",
                              style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            )),
                      ),
                    Padding(padding:EdgeInsets.only(left:25, right: 15,bottom: 5),child: Divider()),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DocumentDetails()));
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 0, left: 30, ),
                          child: Text(
                            "Document Details",
                            style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )),
                    ),
                    Padding(padding:EdgeInsets.only(left:25, right: 15, bottom: 5, top:5),child: Divider()),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => BestDishes()));
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 0, left: 30),
                          child: Text(
                            "Best Dishes",
                            style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )),
                    ),

                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
        child:  Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Image.asset("assets/profile/img_2.png", height: 30,),
                ),
                Container(
                  //color: Colors.red,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10, top: 0),
                  child: Text("My Calender",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ],
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  //headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.only(left: 40, right: 5),
                    child:
                        Text(
                            "Edit time slots, set leaves",
                            style: TextStyle(color: Colors.grey, fontSize: 12,)

                    )),

                collapsed: Text(
                  "",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //for (var _ in Iterable.generate(1))
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DatePick()));
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 0, left: 30, top: 10),
                          child: Text(
                            "Edit time slots",
                            style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )),
                    ),
                    Padding(padding:EdgeInsets.only(left:25, right: 15, top: 5, bottom: 5),child: Divider()),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => SetLeave()));
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 0, left: 30),
                          child: Text(
                            "Set Leaves",
                            style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )),
                    ),


                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
        child:  Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, left: 3),
                  child: Image.asset("assets/images/packet.png", height: 25,),
                ),
                Container(
                  //color: Colors.red,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10, top: 0),
                  child: Text("Order History",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ],
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  //headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.only(left: 40, right: 5),
                    child:
                    Text(
                        "Completed, Cancelled",
                        style: TextStyle(color: Colors.grey, fontSize: 12, )

                    )),

                collapsed: Text(
                  "",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //for (var _ in Iterable.generate(1))
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => BookingHistory()));
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 0, left: 30, top: 10),
                          child: Text(
                            "Completed",
                            style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )),
                    ),
                    Padding(padding:EdgeInsets.only(left:25, right: 15, top:5, bottom: 5),child: Divider()),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => BookingHistory()));
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 0, left: 30),
                          child: Text(
                            "Cancelled",
                            style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )),
                    ),


                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Card4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
        child:  Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Image.asset("assets/images/img_7.png", height: 30,),
                ),
                Container(
                  //color: Colors.red,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10, top: 0),
                  child: Text("Earnings & Payouts",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ],
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  //headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.only(left: 40, right: 5),
                    child:
                    Text("Refund status & Payment Modes",style: TextStyle(color: Colors.grey, fontSize: 12, )

                    )),

                collapsed: Text(
                  "",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //for (var _ in Iterable.generate(1))
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => EarningsPayout()));
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 0, left: 30, top: 10),
                          child: Text(
                            "Refund status",
                            style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )),
                    ),
                    Padding(padding:EdgeInsets.only(left:25, right: 15, bottom: 5, top: 5),child: Divider()),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => EarningsPayout()));
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 0, left: 30),
                          child: Text(
                            "Payment Modes",
                            style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )),
                    ),


                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom:10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Card5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
        child:  Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Image.asset("assets/notify/img_4.png", height: 30,),
                ),
                Container(
                  //color: Colors.red,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10, top: 0),
                  child: Text("Reviews & Rating",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ],
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  //headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.only(left: 40, right: 5, bottom: 10),
                    child:
                    Text(
                        "Bookings & Order updates",
                        style: TextStyle(color: Colors.grey, fontSize: 12,)

                    )),

                collapsed: Text(
                  "",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //for (var _ in Iterable.generate(1))
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => Rating()));
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 0, left: 30),
                          child: Text(
                            "Bookings",
                            style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )),
                    ),
                    Padding(padding:EdgeInsets.only(left:25, right: 15, bottom: 5, top: 5),child: Divider()),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => Rating()));
                      },
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 10, left: 30),
                          child: Text(
                            "Order updates",
                            style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )),
                    ),


                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Card6 extends StatelessWidget {
  const Card6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(top: 0, left: 10),
              child: Image.asset("assets/notify/img_5.png", height: 30,),
            ),
           GestureDetector(
             onTap: (){
               Navigator.of(context).push(
                   MaterialPageRoute(
                       builder: (context) => RecentService()));
             },
             child:  Container(
               //color: Colors.red,
               alignment: Alignment.topLeft,
               padding: EdgeInsets.only(left: 10, top: 0,),
               child: Text("Help & Support",
                 style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
               ),
             ),
           )
          ],
        )
      ],
    );
  }
}


class Card7 extends StatelessWidget {
  const Card7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 35, left: 10, bottom: 20),
                child: Image.asset("assets/notify/img_6.png", height: 30,),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => RecentService()));
                },
                child:  Container(
                  //color: Colors.red,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10, top: 35
                      ,bottom: 20),
                  child: Text("Logout",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                ),
              )
            ],
          )
        ],
    );
  }
}


// Padding(
//             padding: EdgeInsets.only(top: 60, left: 15),
//             child: Text("Profile",
//               style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 10, left: 15),
//             child: Image.asset("assets/images/img_3.png",
//             height: MediaQuery.of(context).size.height/10,
//             ),
//           )
/* 1st page
return  DefaultTabController(
      length: 2,
      child: Scaffold(

          bottom: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(child: Text("Accepted", style: TextStyle(fontSize: 20, color: Colors.black),)),
                  Tab(child : Text("Ongoing",style: TextStyle(fontSize: 20, color: Colors.black))),
                ],
              ),
            ],
        ),
        body:
        TabBarView(
          children: [
                 Column(
                   children: [
                     FlutterSwitch(
                       activeColor: Colors.green,
                       width: 85.0,
                       height: 35.0,
                       valueFontSize: 15.0,
                       toggleSize: 35.0,
                       value: status,
                       borderRadius: 20.0,
                       padding: 3.0,
                       showOnOff: true,
                       onToggle: (val) {
                         setState(() {
                           status = val;
                         });
                       },
                     ),
                   ],
                 ),
            Center( child: Text("Page 2")),
          ],
        ),
      )
    );
 */

/*
appBar: new PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: new Container(
           //height: MediaQuery.of(context).size.height/4,
            color: Colors.green,
            child: new SafeArea(
              child: Column(
                children: <Widget>[
                  FlutterSwitch(
                    activeColor: Colors.green,
                    width: 85.0,
                    height: 30.0,
                    valueFontSize: 15.0,
                    toggleSize: 35.0,
                    value: status,
                    borderRadius: 20.0,
                    padding: 3.0,
                    showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                  new TabBar(
                    //padding: EdgeInsets.only(top: 20),
                    tabs: [new Text("Accepted", style:  TextStyle(fontSize:17, color: Colors.black,)),
                      new Text("Ongoing", style:  TextStyle(fontSize: 17, color: Colors.black,))],
                  ),

                ],
              ),
            ),
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text("Lunches Page"),
                )
                ],
            ),
            new Column(
              children: <Widget>[new Text("Cart Page")],
            )
          ],
        ),
 */