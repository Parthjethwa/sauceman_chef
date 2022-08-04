import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sauceman_chef/calender/date.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              elevation: 0.5,
              leadingWidth: 28, // <-- Use this

              iconTheme: IconThemeData(
                color: Colors.black, //change your color here
              ),
              title: Text("Best Dishes",
                style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.white,
            ),
            body:  Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: TabBar(
                      indicatorColor: Colors.black,
                      //automaticIndicatorColorAdjustment: true,
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.black,
                      tabs: [
                        Tab(child: Text("Your Experties", style: TextStyle(fontSize:14, fontWeight: FontWeight.bold),),),
                        Tab(child: Text("Feed", style: TextStyle(fontSize:14, fontWeight: FontWeight.bold),),),
                      ],
                    ),
                  ),
                  Expanded(
                      child:
                      TabBarView( // <-- Your TabBarView
                          children: [
                            Column(

                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child:
                            Column(
                                children: [
                                  Stack(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                                          child: Image.asset("assets/another/img.png",
                                            //height: 200,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topRight,
                                          padding: EdgeInsets.only(top: 30, right: 25),
                                          child: Image.asset("assets/images/delete.png", height: 20,),
                                        )
                                      ]
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 25, left: 20),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Add Title",
                                        style: TextStyle(fontSize: 12, color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey,
                                                width: 0.5
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 17, bottom: 17, left: 10),
                                          child: Text("Chicken biryani",
                                            style: TextStyle(fontSize: 12, color: Colors.black),
                                          ),
                                        ),
                                      )
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 25, left: 20),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Description",
                                        style: TextStyle(fontSize: 12, color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 20),
                                      child: Container(
                                          width: double.infinity,
                                          height: 100,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey,
                                                  width: 0.5
                                              ),
                                              borderRadius: BorderRadius.all(Radius.circular(10))
                                          ),
                                          child:Container(
                                            //alignment: Alignment.topLeft,
                                            padding: EdgeInsets.only(top: 15, bottom: 0, left: 10),
                                                  child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing\nelit, sed do eiusmlaborod tempor incididunt ut e et",
                                                    style: TextStyle(fontSize: 12, color: Colors.black),
                                                  ),

                                            ),
                                          )
                                      ),
Container(
  alignment: Alignment.bottomCenter,
  child:
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Expanded(
                                            child: Container(
                                                alignment: Alignment.bottomLeft,
                                                padding: EdgeInsets.only(left: 15, top: 0, bottom: 15, right: 7.5),
                                                child:GestureDetector(
                                                  onTap: (){
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (context) => DatePick()));
                                                  },child:Container(
                                                  width: 160,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.grey,
                                                          width: 0.5
                                                      ),
                                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                                  ),
                                                  padding: EdgeInsets.only(top: 20, bottom: 20),
                                                  child:  Text("Cancel",
                                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 14),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                ),
                                              ),
                                            ),
                                          Expanded(
                                            child: Align(
                                              alignment: FractionalOffset.bottomRight,
                                              child: Padding(
                                                padding: EdgeInsets.only(right: 15, top: 0, bottom: 15, left: 7.5),
                                                child:GestureDetector(
                                                  onTap: (){
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (context) => DatePick()));
                                                  },
                                                  child:Container(
                                                    width: 160,
                                                    decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                                    ),
                                                    padding: EdgeInsets.only(top: 20, bottom: 20),
                                                    child: Text("Save & Publish",
                                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14),
                                                      textAlign: TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            ),
      ]
                                          )
),
                                ]
                            ),
                            )
                          ]
                      )
                  )
                ]
            )
        )
    );
  }
}
