
import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'info.dart';

class AddImage extends StatefulWidget {
  const AddImage({Key? key}) : super(key: key);

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 2,
        child:Scaffold(
      appBar: AppBar(
        leadingWidth: 28, // <-- Use this
        elevation: 0.5,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text("Best Dishes",
          style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
          children: [
      Padding(
      padding: EdgeInsets.only(top: 0),
          child: TabBar(
            indicatorColor: Colors.black,
            //automaticIndicatorColorAdjustment: true,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            tabs: [
              Tab(child: Text("Your Experties", style: TextStyle(fontSize:14,fontWeight: FontWeight.bold),),),
              Tab(child: Text("Feed", style: TextStyle(fontSize:14,fontWeight: FontWeight.bold),),),
            ],
          ),
        ),
        Expanded(
          child: TabBarView( // <-- Your TabBarView
              children: [
                Column(
                  children:[

                  ]
                ),
                SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
              children:[
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 15, right: 0),
                          child: DottedBorder(
                              color: Colors.grey,
                              borderType: BorderType.RRect,
                              radius: Radius.circular(10),
                              dashPattern: [8, 5],
                              //padding: EdgeInsets.only(top: 10),
                              //strokeCap: StrokeCap.butt,
                              strokeWidth: 1,
                              child: Container(
                                color: Colors.grey[100],
                                height: 160,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                          alignment: Alignment.centerRight,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(right: 0),
                                                child: Icon(Icons.add_circle, size: 30, color: Colors.grey,),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 10, bottom: 0, left: 25, right: 25),
                                                child: Text("Add Image/video",
                                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 0, bottom: 0, left: 25, right: 25),
                                                child: Text("(5mb max)",
                                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                                ),
                                              ),
                                            ],
                                          )
                                      ),
                                    ),

                                  ],
                                ),
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 0, right: 15),
                          child: Container(
                            // color: Colors.grey[100],
                            height: 160,
                            //width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 0.5
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),

                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    //alignment: Alignment.centerRight,
                                      child: Column(
                                        //mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Stack(
                                            children: [
                                              GestureDetector(
                                                onTap: showMenu,
                                                child: Padding(
                                                    padding: EdgeInsets.only(right: 0),
                                                    child: Image.asset("assets/images/feed1.png",
                                                      height: 125,
                                                      //width: 142,
                                                      //fit: BoxFit.cover,
                                                    )
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 5, left: 90),
                                                child: Image.asset("assets/another/approved.png",
                                                  height: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(top: 10, bottom: 0, left: 0, right: 35),
                                                child: Text("Chicken biryani",
                                                  style: TextStyle(fontSize: 12, color: Colors.black),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.centerRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(top: 5),
                                                  child: Image.asset("assets/images/delete.png",
                                                    height: 20,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 15, right: 0),
                          child: Container(
                            // color: Colors.grey[100],
                            height: 160,
                            //width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 0.5
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),

                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    //alignment: Alignment.centerRight,
                                      child: Column(
                                        //mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Stack(
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(right: 0),
                                                  child: Image.asset("assets/images/feed2.png",
                                                    height: 125,
                                                    //width: 142,
                                                    //fit: BoxFit.cover,
                                                  )
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 5, left: 90),
                                                child: Image.asset("assets/another/inreview.png",
                                                  height: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(top: 10, bottom: 0, left: 0, right: 85),
                                                child: Text("Soup",
                                                  style: TextStyle(fontSize: 12, color: Colors.black),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.centerRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(top: 5),
                                                  child: Image.asset("assets/images/delete.png",
                                                    height: 20,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 0, right: 15),
                          child: Container(
                            // color: Colors.grey[100],
                            height: 160,
                            //width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.red,
                                    width: 1
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),

                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    //alignment: Alignment.centerRight,
                                      child: Column(
                                        //mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Stack(
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(right: 0),
                                                  child: Image.asset("assets/images/feed3.png",
                                                    height: 125,
                                                    //width: 142,
                                                    //fit: BoxFit.cover,
                                                  )
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 5, left: 90),
                                                child: Image.asset("assets/another/rejected.png",
                                                  height: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(top: 10, bottom: 0, left: 0, right: 65),
                                                child: Text("Pancake",
                                                  style: TextStyle(fontSize: 12, color: Colors.black),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.centerRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(top: 5),
                                                  child: Image.asset("assets/images/delete.png",
                                                    height: 20,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 15, right: 0, bottom: 15),
                          child: Container(
                            // color: Colors.grey[100],
                            height: 160,
                            //width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 0.5
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),

                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    //alignment: Alignment.centerRight,
                                      child: Column(
                                        //mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(right: 0),
                                              child: Image.asset("assets/images/feed4.png",
                                                height: 125,
                                                //width: 142,
                                                //fit: BoxFit.cover,
                                              )
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(top: 10, bottom: 0, left: 0, right: 65),
                                                child: Text("Noodles",
                                                  style: TextStyle(fontSize: 12, color: Colors.black),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.centerRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(top: 5),
                                                  child: Image.asset("assets/images/delete.png",
                                                    height: 20,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 0, right: 15, bottom: 15),
                          child: Container(
                            // color: Colors.grey[100],
                            height: 160,
                            //width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 0.5
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),

                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    //alignment: Alignment.centerRight,
                                      child: Column(
                                        //mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(right: 0),
                                              child: Image.asset("assets/images/feed5.png",
                                                height: 125,
                                                //width: 142,
                                                //fit: BoxFit.cover,
                                              )
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(top: 10, bottom: 0, left: 0, right: 65),
                                                child: Text("Bread",
                                                  style: TextStyle(fontSize: 12, color: Colors.black),
                                                ),
                                              ),
                                              VerticalDivider(

                                              ),
                                              Container(
                                                //alignment: Alignment.centerRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(top: 5),
                                                  child: Image.asset("assets/images/delete.png",
                                                    height: 20,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ]
          )
      ),
          ]
        )
    )
    ]
    )
    )
    );
  }
  showMenu() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topRight: Radius.circular(10),
                topLeft: Radius.circular(10)
            )
        ),
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 400,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Image.asset("assets/images/img_12.png",
                      height: MediaQuery.of(context).size.height/20,
                      width: MediaQuery.of(context).size.width/10,
                    ),
                  ),
                  Container(
                    child:  Padding(
                      padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                      child: Image.asset("assets/another/img.png",
                        height:200
                        //width: double.infinity
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, left: 15),
                      child: Text("Chicken biryani",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15, left: 17),
                      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing",
                          style: TextStyle(color: Colors.black, fontSize: 12)
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 17),
                      child: Text("elit, sed do eiusmod tempor incididunt ut labore et",
                          style: TextStyle(color: Colors.black, fontSize: 12)
                      ),
                    ),
                  ),

                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 15,left: 10, right: 10),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => Information()));
                              },
                              child: Container(
                                  alignment: Alignment.bottomCenter,
                                  width: 150,
                                  height: 45,
                                  padding: EdgeInsets.only(top: 13, bottom: 13),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red),
                                      borderRadius: BorderRadius.all(Radius.circular(7))
                                  ),
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 5),
                                        child: Image.asset("assets/images/delete.png",
                                          height: 18,
                                        ),
                                      ),
                                      Text("Delete",
                                        style: TextStyle(fontSize: 14, color: Colors.red, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                              ),
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15,right: 10, left: 10),
                          child: GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => Information()));
                              },
                              child: Container(
                                  alignment: Alignment.centerRight,
                                  width: 150,
                                  height: 45,
                                  padding: EdgeInsets.only(top: 13, bottom: 13),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.all(Radius.circular(7))
                                  ),
                                  child:  Container(
                                    alignment: Alignment.center,
                                    child:
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 5),
                                          child: Icon(Icons.create,size: 15,),
                                        ),
                                        Text("Edit",
                                          style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  )
                              )
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              )
          );
        });
  }
}
