import 'dart:ui';
import 'package:flutter/material.dart';
import 'cooking 2.dart';
import 'cooking menu.dart';
import 'package:timer_button/timer_button.dart';


class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
        appBar: AppBar(
          leadingWidth: 28, // <-- Use this
          elevation: 1,
          automaticallyImplyLeading: false,
          title: Text("Booking Alert",
            style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold, fontSize: 16),
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
        body:ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                      height: MediaQuery.of(context).size.height/17,
                      width: MediaQuery.of(context).size.width/1,
                      color: Colors.green[100],
                      child: Padding(
                        padding: EdgeInsets.only(top: 0, left: 15),
                        child: Text("1 New Booking Request",
                          style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 15, right: 15),
                child: Container(
                  //height: MediaQuery.of(context).size.height/3.3,
                  //width: MediaQuery.of(context).size.width/1,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5
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
                              child: Text("22/06/22", style: TextStyle(color: Colors.grey, fontSize: 12),),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 13),
                              child: Text("Usmanpura, Ahmedabad, Gujarat",
                              style: TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10, bottom: 10),
                              child: Text("12:30 PM", style: TextStyle(color: Colors.black, fontSize: 12),
                                textAlign: TextAlign.right,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 0),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10,right: 20),
                            child: Image.asset("assets/images/img.png",
                              height: MediaQuery.of(context).size.height/17,
                              width: MediaQuery.of(context).size.width/5,
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => CookingMenu()));
                                },
                                child: Text("View Cooking Menu",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.grey[800]),
                                ),
                              )
                          ),
                           IconButton(
                                icon: Icon(Icons.arrow_forward_ios_outlined, size: 16, color: Colors.black,),
                                onPressed: () {  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => CookingMenu())); },
                              )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 0),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10,),
                            child: GestureDetector(
                                onTap: showMenu,
                                child: Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width/3,
                                  height: MediaQuery.of(context).size.width/7.5,
                                  margin: EdgeInsets.only(top: 16, bottom: 16),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red),
                                      borderRadius: BorderRadius.all(Radius.circular(7))
                                  ),
                                  child: Text("Reject",
                                  style: TextStyle(fontSize: 14, color: Colors.red, fontWeight: FontWeight.bold),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                                child:  FlatButton(
                                  //padding: const EdgeInsets.fromLTRB(0, 12, 5, 11),
                                  //minWidth: 400.0,
                                  height: 55.0,
                                  color: Colors.black,
                                  textColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Cooking2()));
                                  },
                                  child: const Text('Accept (07:08)',
                                    style: TextStyle(fontSize: 14,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ///////////////////////////////////////////////////////////////////////
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Container(
                  //height: MediaQuery.of(context).size.height/3.3,
                  //width: MediaQuery.of(context).size.width/1,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                          width: 0.5

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
                              child: Text("22/06/22", style: TextStyle(color: Colors.grey, fontSize: 12),),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 13),
                              child: Text("Usmanpura, Ahmedabad, Gujarat",
                                style: TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10, bottom: 10),
                              child: Text("12:30 PM", style: TextStyle(color: Colors.black, fontSize: 12),
                                textAlign: TextAlign.right,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 0),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10,right: 20),
                            child: Image.asset("assets/images/img.png",
                              height: MediaQuery.of(context).size.height/17,
                              width: MediaQuery.of(context).size.width/5,
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => CookingMenu()));
                                },
                                child: Text("View Cooking Menu",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.grey[800]),
                                ),
                              )
                          ),
                          IconButton(
                            icon: Icon(Icons.arrow_forward_ios_outlined, size: 16, color: Colors.black,),
                            onPressed: () {  Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => CookingMenu())); },
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 0),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10,),
                            child: GestureDetector(
                                onTap: showMenu,
                                child: Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width/3,
                                  height: MediaQuery.of(context).size.width/7.5,
                                  margin: EdgeInsets.only(top: 16, bottom: 16),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red),
                                      borderRadius: BorderRadius.all(Radius.circular(7))
                                  ),
                                  child: Text("Reject",
                                    style: TextStyle(fontSize: 14, color: Colors.red, fontWeight: FontWeight.bold),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child:  FlatButton(
                                //padding: const EdgeInsets.fromLTRB(0, 12, 5, 11),
                                //minWidth: 400.0,
                                height: 55.0,
                                color: Colors.black,
                                textColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => Cooking2()));
                                },
                                child: const Text('Accept (07:08)',
                                  style: TextStyle(fontSize: 14,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 15),
                child: Container(
                  //height: MediaQuery.of(context).size.height/3.3,
                  //width: MediaQuery.of(context).size.width/1,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.5,
                        color: Colors.grey,
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
                              child: Text("22/06/22", style: TextStyle(color: Colors.grey, fontSize: 12),),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 13),
                              child: Text("Usmanpura, Ahmedabad, Gujarat",
                                style: TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10, bottom: 10),
                              child: Text("12:30 PM", style: TextStyle(color: Colors.black, fontSize: 12),
                                textAlign: TextAlign.right,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 0),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10,right: 20),
                            child: Image.asset("assets/images/img.png",
                              height: MediaQuery.of(context).size.height/17,
                              width: MediaQuery.of(context).size.width/5,
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => CookingMenu()));
                                },
                                child: Text("View Cooking Menu",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.grey[800]),
                                ),
                              )
                          ),
                          IconButton(
                            icon: Icon(Icons.arrow_forward_ios_outlined, size: 16, color: Colors.black,),
                            onPressed: () {  Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => CookingMenu())); },
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 0),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10,),
                            child: GestureDetector(
                                onTap: showMenu,
                                child: Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width/3,
                                  height: MediaQuery.of(context).size.width/7.5,
                                  margin: EdgeInsets.only(top: 16, bottom: 16),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red),
                                      borderRadius: BorderRadius.all(Radius.circular(7))
                                  ),
                                  child: Text("Reject",
                                    style: TextStyle(fontSize: 14, color: Colors.red, fontWeight: FontWeight.bold),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child:  FlatButton(
                                //padding: const EdgeInsets.fromLTRB(0, 12, 5, 11),
                                //minWidth: 400.0,
                                height: 55.0,
                                color: Colors.black,
                                textColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => Cooking2()));
                                },
                                child: const Text('Accept (07:08)',
                                  style: TextStyle(fontSize: 14,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
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
          return Container(
                height: MediaQuery.of(context).size.height*0.47,
                child: Column(
                  mainAxisSize:MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Image.asset("assets/images/img_12.png",
                        height: 35,
                        width: 35,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: Image.asset("assets/images/img_2.png",
                        height: 42,
                        width: 42
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text("Reason for rejection",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("You have only 5 rejection left",
                          style: TextStyle(color: Colors.red, fontSize: 14)
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      height: 95,
                      margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                      padding: EdgeInsets.only(top: 0, left: 8, right: 8),
                      decoration:BoxDecoration(
                        borderRadius:  BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Colors.grey
                        )
                        //color: Colors.grey
                        ),
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Eg., Too far from my place',
                          hintStyle: TextStyle(
                              color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                     Container(
                              margin: EdgeInsets.only(left: 15,bottom:1, right: 15, top: 20),
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
                                          builder: (context) => Booking()));
                                },
                                child: const Text('Submit',
                                  style: TextStyle(fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                  ],
                )
          );
        });
  }
}

/*
Container(
              height: 400,
              color: Colors.white,
              child: Stack(
                  alignment: const Alignment(0, 0),
                  children: <Widget>[
                    ListView(
                        children: const  <Widget>[
                          ListTile(
                            title: Padding(
                              padding: EdgeInsets.only(top: 10 ),
                              child: Text('Add an Address',
                                style: TextStyle(fontSize: 18,),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ]
                    ),
                    ListTile(
                        title : Padding(
                          padding: const EdgeInsets.only(bottom: 160),
                          child : Container(
                            height: 65,
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                            child: const TextField(
                              keyboardType: TextInputType.text,
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2.0),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(5.0)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1.9),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(5.0)),
                                  ),
                                  hintText: ''
                              ),
                            ),
                          ),
                        )
                    ),
                  ]
 */

/*
TimerButton(
                                  label: "Accept",
                                  buttonType: ButtonType.FlatButton,
                                  timeOutInSeconds: 60,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => CookingMenu()));
                                  },
                                  disabledColor: Colors.grey,
                                  color: Colors.black,
                                  disabledTextStyle: new TextStyle(fontSize: 20.0),
                                  activeTextStyle: new TextStyle(fontSize: 20.0, color: Colors.white),
                                ),

 */

