import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sauceman_chef/cooking%20menu.dart';

class Cooking2 extends StatefulWidget {
  const Cooking2({Key? key}) : super(key: key);

  @override
  State<Cooking2> createState() => _Cooking2State();
}

class _Cooking2State extends State<Cooking2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  child: Text("Occassion-Birthday Menu",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey),
                  ),
                ),
              ),
              SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20, left: 15),
                          child: Text("Starters",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ),

                      ListView(
                        shrinkWrap: true,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10, left: 15),
                                  child: Image.asset("assets/another/img_8.png",height: 15,),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Text("Mexican Corn Soup",
                                  style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 13, left: 15),
                                  child: Image.asset("assets/another/img_8.png",height: 15,),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 13, left: 10),
                                child: Text("Veggie Dip",
                                  style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 13, left: 15),
                                  child: Image.asset("assets/another/img_8.png",height: 15,),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 13, left: 10),
                                child: Text("Khama Dhokla",
                                  style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 13, left: 15),
                                  child: Image.asset("assets/another/img_8.png",height: 15,),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 13, left: 10),
                                child: Text("Potato balls ",
                                  style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 25, left: 15),
                          child: Text("Main Course",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ),
                     ListView(
                       shrinkWrap: true,
                       children: [
                         Row(
                           children: [
                             Container(
                               child: Padding(
                                 padding: EdgeInsets.only(top: 10, left: 15),
                                 child: Image.asset("assets/another/img_8.png",height: 15,),
                               ),
                             ),
                             Padding(
                               padding: EdgeInsets.only(top: 10, left: 10),
                               child: Text("Dal Makhani with white Jeera rice",
                                 style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                               ),
                             )
                           ],
                         ),
                         Row(
                           children: [
                             Container(
                               child: Padding(
                                 padding: EdgeInsets.only(top: 13, left: 15),
                                 child: Image.asset("assets/another/img_8.png",height: 15,),
                               ),
                             ),
                             Padding(
                               padding: EdgeInsets.only(top: 13, left: 10),
                               child: Text("Achari Gobi",
                                 style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                               ),
                             )
                           ],
                         ),
                         Row(
                           children: [
                             Container(
                               child: Padding(
                                 padding: EdgeInsets.only(top: 13, left: 15),
                                 child: Image.asset("assets/another/img_8.png",height: 15,),
                               ),
                             ),
                             Padding(
                               padding: EdgeInsets.only(top: 13, left: 10),
                               child: Text("Paneer Tikka Masala",
                                 style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                               ),
                             )
                           ],
                         ),
                         Row(
                           children: [
                             Container(
                               child: Padding(
                                 padding: EdgeInsets.only(top: 13, left: 15),
                                 child: Image.asset("assets/another/img_8.png",height: 15,),
                               ),
                             ),
                             Padding(
                               padding: EdgeInsets.only(top: 13, left: 10),
                               child: Text("Cucumber Raita ",
                                 style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                               ),
                             )
                           ],
                         ),
                       ],
                     ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 25, left: 15),
                          child: Text("Dessert",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ),
                      ListView(
                        shrinkWrap: true,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10, left: 15),
                                  child: Image.asset("assets/another/img_8.png",height: 15,),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Text("Gajar Ka Halawa",
                                  style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 13, left: 15),
                                  child: Image.asset("assets/another/img_10.png",height: 15,),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 13, left: 10),
                                child: Text("Milk Peda",
                                  style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  )
              ),
              Expanded(
                  child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child:  Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFEFC55C),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFFFFF8EB)
                          ),
                        margin: EdgeInsets.only(left: 20,bottom: 15, right: 20),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15,top: 7, bottom: 7),
                              child: Image.asset("assets/another/img_7.png", height: 30,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 60),
                              child: Text("View Customization",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
                              ),
                            ),
                            Container(
                              //alignment: Alignment.bottomRight,
                              child: IconButton(
                                icon: Icon(Icons.arrow_forward_ios_outlined, size: 16, color: Colors.black,),
                                onPressed: showMenu/* Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => CookingMenu()));
                                         */,
                              ),
                            )
                          ],
                        )
                      )
                  )
              )
            ]
        )
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
          return GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => CookingMenu()));
            },
          child: Container(
            height: MediaQuery.of(context).size.height*0.4,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Image.asset("assets/images/img_12.png",
                    height: MediaQuery.of(context).size.height/20,
                    width: MediaQuery.of(context).size.width/10,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, left: 15),
                    child: Text("CUSTOMIZED MENU",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, left: 15),
                    child: Text("Starters",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 15),
                        child: Image.asset("assets/another/img_8.png",height: 15,),
                      ),
                    ),
                    Container(
                      width: 90,
                      //color: Colors.blue,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 5, right: 0),
                        child: Text("Veggie Dip",
                          style: TextStyle(fontSize: 12, color: Colors.grey[800]),
                        ),
                      ),
                    ),

                   Expanded(
                     child: Container(
                       alignment: Alignment.center,
                       child:  Padding(
                         padding: EdgeInsets.only(top: 13, right: 0),
                         child: Icon(Icons.arrow_forward, size: 25, color: Colors.grey,),
                       ),
                     ),
                   ),

                      Container(
                        margin: EdgeInsets.only(top: 10, right: 15),
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFEFC55C),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xFFFFF8EB)
                        ),
                        child: Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(top: 5, left: 10, bottom: 5),
                                child: Image.asset("assets/another/img_8.png",height: 15,),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5, left: 10, bottom: 5, right: 10),
                              child: Text("Mexican Corn Soup",
                                style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                              ),
                            )
                          ],
                        ),
                      ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 15),
                        child: Image.asset("assets/another/img_8.png",height: 15,),
                      ),
                    ),
                   Container(
                     //color: Colors.blue,
                     width: 90,
                     child:  Padding(
                       padding: EdgeInsets.only(top: 10, left: 5, right:0 ),
                       child: Text("Potato balls",
                         style: TextStyle(fontSize: 12, color: Colors.grey[800]),
                       ),
                     ),
                   ),

                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child:  Padding(
                          padding: EdgeInsets.only(top: 13, right: 0, left: 5),
                          child: Icon(Icons.arrow_forward, size: 25, color: Colors.grey,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, right: 15, left: 5),
                      child:Container(
                          alignment: Alignment.bottomRight,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFEFC55C),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Color(0xFFFFF8EB)
                          ),
                          child: Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 5, left: 10, bottom: 5),
                                  child: Image.asset("assets/another/img_8.png",height: 15,),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5, left: 10, bottom: 5, right: 35),
                                child: Text("Khaman Dhokla",
                                  style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, left: 15),
                    child: Text("Main Course",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 15),
                        child: Image.asset("assets/another/img_8.png",height: 15,),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 5, right: 15),
                      child: Text("Cucumber Raita ",
                        style: TextStyle(fontSize: 12, color: Colors.grey[800]),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child:  Padding(
                          padding: EdgeInsets.only(top: 13, right: 0),
                          child: Icon(Icons.arrow_forward, size: 25, color: Colors.white,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, right: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFEFC55C),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xFFFFF8EB)
                        ),
                        child: Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(top: 5, left: 10, bottom: 5),
                                child: Image.asset("assets/another/img_8.png",height: 15,),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5, left: 10, bottom: 5, right: 60),
                              child: Text("Achari Gobi",
                                style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
          );
        });
  }
}

