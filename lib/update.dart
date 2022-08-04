
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:sauceman_chef/booking.dart';
import 'package:sauceman_chef/cooking%20menu.dart';
import 'package:sauceman_chef/profile.dart';

class Update extends StatefulWidget {
  const Update({Key? key}) : super(key: key);

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  int _currentValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              leadingWidth: 28, // <-- Use this
              elevation: 1,
              iconTheme: IconThemeData(
                color: Colors.black, //change your color here
              ),
              backgroundColor: Colors.white,
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.grey[100],
                child: Center(
                  child: TextField(
                    textAlign: TextAlign.start,
                    scrollPadding: EdgeInsets.only(),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '  bbq sauce',
                       // prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.clear)),
                  ),
                ),
              ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top: 30, left: 15),
            child: Text("Search Results",
            style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: Container(
              //color: Colors.red,
              height: MediaQuery.of(context).size.height/ 11,
              width: MediaQuery.of(context).size.width/1,
              child: Padding(
                  padding: EdgeInsets.only(top: 0, left: 10),
                  child: Row(
                      children: [
                        Image.asset("assets/images/maggiee.png",
                          width: MediaQuery.of(context).size.width/10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 0, left: 20),
                          child: Text("Chiile Sause",
                            style: TextStyle(fontSize: 12,  color: Colors.black),
                          ),
                        ),
                        Expanded(
                            child:Container(
                              alignment: Alignment.centerRight,
                              child: Padding(padding: EdgeInsets.only(top: 10, left: 0, right: 10, bottom: 10),
                                child: FlatButton(
                                  minWidth: 70.0,
                                  height: 30,
                                  color: Color(0xFFEFC55C),
                                  textColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  onPressed: showMenu,
                                  child: const Text('+ Add',
                                    style: TextStyle(fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                        )
                      ]
                  )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: Container(
              //color: Colors.red,
              height: MediaQuery.of(context).size.height/ 11,
              width: MediaQuery.of(context).size.width/1,
              child: Padding(
                  padding: EdgeInsets.only(top: 0, left: 10),
                  child: Row(
                      children: [
                        Image.asset("assets/images/oill.png",
                          width: MediaQuery.of(context).size.width/10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 0, left: 20),
                          child: Text("Vinegar",
                            style: TextStyle(fontSize: 12,  color: Colors.black),
                          ),
                        ),
                        Expanded(
                            child:Container(
                              alignment: Alignment.centerRight,
                              child: Padding(padding: EdgeInsets.only(top: 10, left: 0, right: 10, bottom: 10),
                                child: FlatButton(
                                  minWidth: 70.0,
                                  height: 30.0,
                                  color: Color(0xFFEFC55C),
                                  textColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  onPressed: showMenu,
                                    /*
                                     Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => EditMenu()));
                                     */

                                  child: const Text('+ Add',
                                    style: TextStyle(fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                        )
                      ]
                  )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: Container(
              //color: Colors.red,
              height: MediaQuery.of(context).size.height/ 11,
              width: MediaQuery.of(context).size.width/1,
              child: Padding(
                  padding: EdgeInsets.only(top: 0, left: 10),
                  child: Row(
                      children: [
                        Image.asset("assets/images/springonionn.png",
                          width: MediaQuery.of(context).size.width/10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 0, left: 20),
                          child: Text("Oregano",
                            style: TextStyle(fontSize: 12,  color: Colors.black),
                          ),
                        ),
                        Expanded(
                            child:Container(
                              alignment: Alignment.centerRight,
                              child: Padding(padding: EdgeInsets.only(top: 10, left: 0, right: 10, bottom: 15),
                                child: FlatButton(
                                  minWidth: 70.0,
                                  height: 30.0,
                                  color: Color(0xFFEFC55C),
                                  textColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  onPressed:showMenu,
                                    /*
                                     Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => EditMenu()));
                                     */
                                  child: const Text('+ Add',
                                    style: TextStyle(fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                        )
                      ]
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
  showMenu() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topRight: Radius.circular(25),
                topLeft: Radius.circular(25)
            )
        ),
        context: context,
        builder: (BuildContext context) {
          return Container(
                     height: MediaQuery.of(context).size.height/1.8,
                     child: Column(
                             mainAxisSize:MainAxisSize.max,
                             children: [
                               Container(
                                 padding: EdgeInsets.only(top: 10),
                                 child: Divider(
                                   //height: 2.5,
                                   thickness: 3,
                                   endIndent: 180,
                                   indent: 180,
                                   color: Colors.grey,
                                 ),
                               ),
                               Container(
                                 padding: EdgeInsets.only(top: 10),
                                 child: Image.asset("assets/images/maggiee.png",
                                   //height: 25,
                                   //width: 25
                                 ),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 13, left: 0),
                                 child: Text("Chiile Sause",
                                   style: TextStyle(fontSize: 16,  color: Colors.black, fontWeight: FontWeight.bold),
                                 ),
                               ),
                               Container(
                                 padding: EdgeInsets.only(top: 20, left: 30),
                                 alignment: Alignment.topLeft,
                                 child:
                                 Text("Pick the Quantity",
                                     style: TextStyle( fontSize: 14, color: Colors.grey)
                                 ),
                               ),

                                   Row(
                                     children: [
                                       Container(
                                         //alignment: Alignment.topLeft,
                                           padding: EdgeInsets.only(top: 0, left: 40),
                                           child: NumberPicker(
                                             //itemCount: 50,
                                             textStyle: TextStyle(color: Colors.grey),
                                             selectedTextStyle: TextStyle(color: Colors.black,),
                                             step: 50,
                                             value: _currentValue,
                                             minValue: 0,
                                             maxValue: 200,
                                             onChanged: (value) => setState(() => _currentValue = value),
                                           ),
                                         ),
                                       SingleChildScrollView(
                                         scrollDirection: Axis.vertical,
                                         child:
                                         Padding(
                                           padding: EdgeInsets.only(left: 100),
                                           child: Column(
                                             children: [
                                               Padding(
                                                 padding: EdgeInsets.only(top: 50),
                                                 child: Text("g"),
                                               ),
                                               // VerticalDivider(width: 100),
                                               Padding(
                                                 padding: EdgeInsets.only(top: 40),
                                                 child: Text("kg", style: TextStyle(color: Colors.grey),),
                                               )
                                             ],
                                           ),
                                         ),
                                       )
                                     ],
                                   ),
                               Container(
                                 //alignment: Alignment.bottomCenter,
                                 padding: EdgeInsets.only(top: 15, left: 15, right: 15, ),
                                   child: FlatButton(
                                     minWidth: double.infinity,
                                     height: 45,
                                     color: Colors.black,
                                     textColor: Colors.black,
                                     shape: RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(10)
                                     ),
                                     onPressed: () {
                                       Navigator.of(context).push(
                                           MaterialPageRoute(
                                               builder: (context) => CookingMenu()));
                                     },
                                     child: const Text('Add',
                                       style: TextStyle(fontSize: 16,
                                           color: Colors.white,
                                           fontWeight: FontWeight.bold),
                                     ),
                                   ),
                                 ),
                             ],
                           ),
          );
        });
  }
}


