
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

import 'add_image.dart';

class BestDishes extends StatefulWidget {
  const BestDishes({Key? key}) : super(key: key);

  @override
  State<BestDishes> createState() => _BestDishesState();
}

class _BestDishesState extends State<BestDishes> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 2,
        child: new Scaffold(
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
            body:(
                Column(
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
                        child: TabBarView( // <-- Your TabBarView
                            children: [
                              Column(
    children: [
                              ListView(
                                shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                                      child: DottedBorder(
                                          color: Colors.grey,
                                          borderType: BorderType.RRect,
                                          radius: Radius.circular(10),
                                          dashPattern: [7, 5],
                                          //padding: EdgeInsets.only(top: 10),
                                          //strokeCap: StrokeCap.butt,
                                          strokeWidth: 1.5,
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(top: 13, bottom: 13, left: 10),
                                                  child: Text("Add your expert dishes",
                                                    style: TextStyle(fontSize: 12, color: Colors.grey),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    alignment: Alignment.centerRight,
                                                    child: Padding(
                                                      padding: EdgeInsets.only(right: 10),
                                                      child: Icon(Icons.add_circle, size: 20, color: Colors.grey,),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 17, bottom: 17, left: 10),
                                              child: Text("Chicken biryani",
                                                style: TextStyle(fontSize: 12, color: Colors.black),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.centerRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(right: 10),
                                                  child: Image.asset("assets/images/delete.png",
                                                    width: 20,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
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
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 17, bottom: 17, left: 10),
                                              child: Text("Chicken biryani",
                                                style: TextStyle(fontSize: 12, color: Colors.black),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.centerRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(right: 10),
                                                  child: Image.asset("assets/images/delete.png",
                                                    width: 20,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
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
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 17, bottom: 17, left: 10),
                                              child: Text("Chicken biryani",
                                                style: TextStyle(fontSize: 12, color: Colors.black),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.centerRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(right: 10),
                                                  child: Image.asset("assets/images/delete.png",
                                                    width: 20,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
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
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 17, bottom: 17, left: 10),
                                              child: Text("Chicken biryani",
                                                style: TextStyle(fontSize: 12, color: Colors.black),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.centerRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(right: 10),
                                                  child: Image.asset("assets/images/delete.png",
                                                    width: 20,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
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
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 17, bottom: 17, left: 10),
                                              child: Text("Chicken biryani",
                                                style: TextStyle(fontSize: 12, color: Colors.black),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.centerRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(right: 10),
                                                  child: Image.asset("assets/images/delete.png",
                                                    width: 20,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]
                              ),
                                    Expanded(
                                        child:
                                        Align(
                                            alignment: FractionalOffset.bottomCenter,
                                            child:  Container(
                                              //alignment: Alignment.bottomCenter,
                                              margin: EdgeInsets.only(left: 20,bottom: 15, right: 20),
                                              width: double.infinity,
                                              child:FlatButton(
                                                padding: const EdgeInsets.only(top: 16, bottom: 16),
                                                color: Colors.black,
                                                textColor: Colors.black,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                onPressed: () {
                                                  /* Navigator.of(context).push(
                                                     MaterialPageRoute(
                                                         builder: (context) => Booking()));

                                                 */
                                                },
                                                child: const Text('Add',
                                                  style: TextStyle(fontSize: 16,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            )

                                        )
                                    )

                              ]
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left:15, right:15),
                                      child:DottedBorder(
                                          color: Color(0xFFBDBDBD),
                                          borderType: BorderType.RRect,
                                          radius: Radius.circular(10),
                                          dashPattern: [7, 5],
                                          //padding: EdgeInsets.only(top: 10),
                                          //strokeCap: StrokeCap.butt,
                                          strokeWidth: 1.5,
                                          child: Column(
                                              children: [
                                                Container(height: 120,
                                                //padding: EdgeInsets.only(top: 10),
                                                ),
                                                Container(
                                                  alignment: Alignment.bottomCenter,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(),
                                                    child: Image.asset("assets/images/ui5mb.png",
                                                      width: MediaQuery.of(context).size.width/3,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  //alignment: Alignment.bottomCenter,
                                                  margin: EdgeInsets.only(left: 0,bottom: 0, right: 0, top: 30),
                                                  width: 150,
                                                  child:FlatButton(
                                                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                                                    color: Colors.black,
                                                    textColor: Colors.black,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10)
                                                    ),
                                                    onPressed: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) => AddImage()));


                                                    },
                                                    child: const Text('Add Now',
                                                      style: TextStyle(fontSize: 16,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                                Container(height: 120,),
                                              ]
                                          )
                                      )
                                    )
                                  ]
                              )

                            ]
                        )
                    )
                  ],
                )
            )
        )
    );
  }
}
