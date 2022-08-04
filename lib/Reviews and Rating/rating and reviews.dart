import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';

import '../help & support/recent service.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
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
        title: Text("Ratings & Reviews",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 15, left: 15),
              child: Text("My Rating",
              style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, top: 15),
                  alignment: Alignment.topLeft,
                  child: Text("4.88",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, color: Colors.black),
                  ),
                ),
                Column(
                  children: [
                   Row(
                     children: [
                       Padding(
                         padding: EdgeInsets.only(top: 15, left: 15),
                         child: Icon(Icons.star, size: 15,color: Colors.black,),
                       ),
                       Padding(
                         padding: EdgeInsets.only(top: 15),
                         child: Icon(Icons.star, size: 15,color: Colors.black,),
                       ),
                       Padding(
                         padding: EdgeInsets.only(top: 15),
                         child: Icon(Icons.star, size: 15,color: Colors.black,),
                       ),
                       Padding(
                         padding: EdgeInsets.only(top: 15),
                         child: Icon(Icons.star, size: 15,color: Colors.black,),
                       ),
                       Padding(
                         padding: EdgeInsets.only(top: 15),
                         child: Icon(Icons.star, size: 15,color: Colors.black,),
                       ),
                     ],
                   ),
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Text("33 Ratings",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 90,
                      margin: EdgeInsets.only(left: 10),
                      //color: Colors.blue,
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.only(left: 0, top: 20, right: 10),
                      child: Text("Excellent (20)",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                    //VerticalDivider(),
                     Padding(
                        padding: EdgeInsets.only(left: 0, right: 15, top: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.transparent
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            //color: Color(0xFF5D9E52)
                            color: Colors.green,
                          ),
                          width: MediaQuery.of(context).size.width/1.7,
                          height: 7,
                        ),
                      )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 90,
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.only(left: 0, top: 10, right: 10),
                      child: Text("Good (6)",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                    //
                    Padding(
                          padding: EdgeInsets.only(left: 0, right: 15, top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.transparent
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Color(0xFFA5CE42)
                            ),
                            width: MediaQuery.of(context).size.width/2.4,
                            height: 7,
                          ),
                        )

                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 90,
                      //color: Colors.blue,
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.only(left: 0, top: 10, right: 10),
                      child: Text("Average (4)",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                    //
                    Padding(
                          padding: EdgeInsets.only(left: 0, right: 15, top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.transparent
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Color(0xFFF5E752)
                            ),
                            width: MediaQuery.of(context).size.width/4,
                            height: 7,
                          ),
                        )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 90,
                      //color: Colors.blue,
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.only(left: 0, top: 10, right: 10),
                      child: Text("Bad (2)",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                    //
                    Padding(
                          padding: EdgeInsets.only(left: 0, right: 15, top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.transparent
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Color(0xFFF1A33A)
                            ),
                            width: MediaQuery.of(context).size.width/7.5,
                            height: 7,
                          ),
                        )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      //color: Colors.blue,
                      width: 90,
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.only(right: 10, top: 10),
                      child: Text("Very Bad (1)",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                     Padding(
                          padding: EdgeInsets.only(left: 0, right: 15, top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.transparent
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.red,
                            ),
                            width: 30,
                            height: 7,
                          ),
                        )

                  ],
                ),
              ],
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(top: 20, left: 15),
              alignment: Alignment.topLeft,
              child: Text("Customer Reviews",
                style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 15),
                  child: Image.asset(("assets/images/img.png"),
                  height: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15, top: 20),
                  child: Text("Nov 30, 2021", style: TextStyle(fontSize: 12, color: Colors.grey),),
                )
              ]
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 15),
                  child: Icon(Icons.star, size: 20,color: Colors.green,),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(Icons.star, size: 20,color: Colors.green,),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(Icons.star, size: 20,color: Colors.green,),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(Icons.star, size: 20,color: Colors.green,),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(Icons.star_border, size: 20,color: Colors.grey,),
                ),
              ],
            ),
            Column(
              children: [
               Container(
                 alignment: Alignment.topLeft,
                 child:  Padding(
                   padding: EdgeInsets.only(top: 10, left: 15),
                   child: Text("Lorem ipsum dolor sit amet, consectetur",
                     style: TextStyle(fontSize: 14, color: Colors.grey),
                   ),
                 ),
               ),
                Container(
                  alignment: Alignment.topLeft,
                  child:  Padding(
                    padding: EdgeInsets.only(top: 3, left: 15),
                    child: Text("adipiscing elit. Pulvinar tempor at auctor proin ",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child:  Padding(
                    padding: EdgeInsets.only(top: 3, left: 15),
                    child: Text("sed ut tellus velit, volutpat.",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 8),
                  child: Divider(),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 15),
                        child: Image.asset(("assets/images/img.png"),
                          height: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15, top: 20),
                        child: Text("Nov 30, 2021", style: TextStyle(fontSize: 12, color: Colors.grey),),
                      )
                    ]
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 15),
                      child: Icon(Icons.star, size: 20,color: Colors.green,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(Icons.star, size: 20,color: Colors.green,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(Icons.star, size: 20,color: Colors.green,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(Icons.star, size: 20,color: Colors.green,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(Icons.star_border, size: 20,color: Colors.grey,),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => RecentService()));
                  },
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child:  Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Text("Lorem ipsum dolor sit amet, consectetur",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child:  Padding(
                          padding: EdgeInsets.only(top: 3, left: 15),
                          child: Text("adipiscing elit. Pulvinar tempor at auctor proin ",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child:  Padding(
                          padding: EdgeInsets.only(top: 3, left: 15),
                          child: Text("sed ut tellus velit, volutpat.",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  )
                ),
        ]
      ),
        ]
    )
      )
    );
  }
}
