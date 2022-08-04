import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:sauceman_chef/profile.dart';


import 'edit.dart';


class CookingMenu extends StatefulWidget {
  const CookingMenu({Key? key}) : super(key: key);

  @override
  State<CookingMenu> createState() => _CookingMenuState();
}

class _CookingMenuState extends State<CookingMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 28, // <-- Use this
          elevation: 1,
          automaticallyImplyLeading: false,
          title: Text("Cooking Menu",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.clear,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30, left: 15),
                    child: Text("Menu List",
                      style: TextStyle(fontSize: 16, color: Colors.grey,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.only(top: 15,left: 15),
                      child: Image.asset("assets/images/vegspringroll.png",
                        width: MediaQuery.of(context).size.width/3,
                      )
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.only(top: 10,left: 15 ),
                      child: Image.asset("assets/images/drymanchurian.png",
                        width: MediaQuery.of(context).size.width/3,
                      )
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child:Padding(
                      padding: EdgeInsets.only(top: 10, right: 0,left: 15),
                      child: Image.asset("assets/images/drymanchurian.png",
                        width: MediaQuery.of(context).size.width/3,
                      )
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child:  Padding(
                          padding: EdgeInsets.only(top: 30, left: 15),
                          child: Text("Ingredients List",
                            style: TextStyle(fontSize: 16, color: Colors.grey,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      ListView(
                        shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                        children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 15),
                        child: Row(
                          children: [
                            Image.asset("assets/images/maggiee.png",
                              width: MediaQuery.of(context).size.width/10,
                            ),
                            Container(

                              width: 80,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("3 Packs",
                                    style: TextStyle(fontSize: 12,)),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 0),
                              child: Text("Chings Hakka Noodles",
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 15),
                        child: Row(
                          children: [
                            Image.asset("assets/images/oill.png",
                              width: MediaQuery.of(context).size.width/10,
                            ),
                            Container(

                              width: 80,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("6 tbsp",
                                    style: TextStyle(fontSize: 12,)),
                              ),
                            ) ,
                            Padding(
                              padding: EdgeInsets.only(left: 0),
                              child: Text("Olive oil",
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 15),
                        child: Row(
                          children: [
                            Image.asset("assets/images/springonionn.png",
                              width: MediaQuery.of(context).size.width/10,
                            ),
                            Container(
                              width: 80,

                              child:  Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("6 onion",
                                    style: TextStyle(fontSize: 12,)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 0),
                              child: Text("Spring onion",
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 15),
                        child: Row(
                          children: [
                            Image.asset("assets/images/gingerr.png",
                              width: MediaQuery.of(context).size.width/10,
                            ),
                            Container(

                              width: 80,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("6 inch",
                                    style: TextStyle(fontSize: 12,)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left:0),
                              child: Text("Ginger",
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 15),
                        child: Row(
                          children: [
                            Image.asset("assets/images/garlicc.png",
                              width: MediaQuery.of(context).size.width/10,
                            ),
                            Container(

                              width: 80,
                              child: Padding(
                                padding: EdgeInsets.only(left: 9),
                                child: Text("6 cloves",
                                    style: TextStyle(fontSize: 12,)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 0),
                              child: Text("Garlic cloves",
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 15),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                              height: 36, width: 36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.transparent,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Color(0xFFF1F8F7),
                              ),
                              child: Image.asset("assets/images/veggies.png",
                                height: 10,
                                width: 25,
                              ),
                            ),
                            Container(
                              width: 80,

                              child: Padding(
                                padding: EdgeInsets.only(left: 9),
                                child: Text("2 Each",
                                    style: TextStyle(fontSize: 12,)),
                              ),
                            ) ,                         Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 0),
                                  child: Text("Vegetables: Cabbage, Onion,",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: EdgeInsets.only(left: 0, top: 0, right: 0),
                                  child: Text("Capsicum, carrot ",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 15),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                              height: 36, width: 36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.transparent,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Color(0xFFF1F8F7),
                              ),
                              child:Image.asset("assets/images/sauces.png",
                                width: MediaQuery.of(context).size.width/15,
                              ),
                            ),
                            Container(

                              width: 80,
                              child:  Padding(
                                padding: EdgeInsets.only(left: 9),
                                child: Text("3 t/p Each",
                                    style: TextStyle(fontSize: 12,)),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 0),
                                  child: Text("Sauces: Red chilli powder",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 0, top: 0, right: 0),
                                  child: Text("pepper,turmeric",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 15),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                              height: 36, width: 36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.transparent,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Color(0xFFF1F8F7),
                              ),
                              child: Image.asset("assets/images/spices.png",
                                // height: 20,
                                width: MediaQuery.of(context).size.width/14,
                              ),
                            ),
                            Container(

                              width: 80,
                              child:  Padding(
                                padding: EdgeInsets.only(left: 9),
                                child: Text("3 t/p Each",
                                    style: TextStyle(fontSize: 12,)),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 0),
                                  child: Text("Spices: Red chilli powder,",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 0, top: 0, right: 28),
                                  child: Text("pepper,turmeric",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
          ]
        )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 5),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child:  Container(
                              margin: EdgeInsets.only(left: 20,top: 0, right: 10, bottom: 15),
                              width: double.infinity,
                              child:FlatButton(
                                padding: const EdgeInsets.only(top: 16, bottom: 16),
                                color: Colors.white,
                                textColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => EditMenu()));
                                },
                                child: const Text('Edit',
                                  style: TextStyle(fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                        )
                    ),
                    Expanded(
                        child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child:  Container(
                              margin: EdgeInsets.only(left: 10,top: 0, right: 20, bottom: 15),
                              width: double.infinity,
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
                                          builder: (context) => Profile()));
                                },
                                child: const Text('Approve',
                                  style: TextStyle(fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                        )
                    )
                  ],
                ),
              ]
          ),
        )
    );
  }
}

