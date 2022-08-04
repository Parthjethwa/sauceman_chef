import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../Order history/booking history.dart';

class SetLeave extends StatefulWidget {
  const SetLeave({Key? key}) : super(key: key);

  @override
  State<SetLeave> createState() => _SetLeaveState();
}

class _SetLeaveState extends State<SetLeave> {
  bool status1= false;
  bool status2= false;
  bool status3= false;
  bool status4= false;
  bool status5= false;
  bool status6= false;
  bool status7= false;
  bool status8= false;
  bool status9= false;
  bool status10= false;

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
        title: Text("My Calender",
          style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  child: Text("Update Your Working Hours For",
                    style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 15),
                  child: Text("Thursday, 20th Jan?",
                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 0.5
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 20, bottom: 10),
                            child: Text("9.00-9.30 am",
                              style: TextStyle(color: Colors.grey[400], fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10, top: 10),
                            child:  FlutterSwitch(
                              value: status1,
                              activeColor: Color(0xFFEFC55C),
                              inactiveColor: Color(0xFFBDBDBDBD),
                              height: 25,
                              width: 60,
                              onToggle: (val) {
                                setState(() {
                                  status1 = val;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          color: Colors.grey,
                            thickness: 0.5

                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            child: Text("9.45-10.15 am",
                              style: TextStyle(color: Colors.grey[400], fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10, top: 0),
                            child:  FlutterSwitch(
                              value: status2,
                              activeColor: Color(0xFFEFC55C),
                              inactiveColor: Color(0xFFBDBDBDBD),
                              height: 25,
                              width: 60,
                              onToggle: (val) {
                                setState(() {
                                  status2 = val;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          color: Colors.grey,
                            thickness: 0.5

                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            child: Text("9.45-10.15 am",
                              style: TextStyle(color: Colors.grey[400], fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10, top: 0),
                            child:  FlutterSwitch(
                              value: status3,
                              activeColor: Color(0xFFEFC55C),
                                inactiveColor: Color(0xFFBDBDBDBD),
                              height: 25,
                              width: 60,
                              onToggle: (val) {
                                setState(() {
                                  status3 = val;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          color: Colors.grey,
                            thickness: 0.5

                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            child: Text("10.30-11.00 am",
                              style: TextStyle(color: Colors.grey[400], fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10, top: 0),
                            child:  FlutterSwitch(
                              value: status4,
                              activeColor: Color(0xFFEFC55C),
                              inactiveColor: Color(0xFFBDBDBDBD),
                              height: 25,
                              width: 60,
                              onToggle: (val) {
                                setState(() {
                                  status4 = val;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          color: Colors.grey,
                            thickness: 0.5

                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            child: Text("11.30-12.00 Pm",
                              style: TextStyle(color: Colors.grey[400], fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10, top: 0),
                            child:  FlutterSwitch(
                              value: status5,
                              activeColor: Color(0xFFEFC55C),
                              inactiveColor: Color(0xFFBDBDBDBD),
                              height: 25,
                              width: 60,
                              onToggle: (val) {
                                setState(() {
                                  status5 = val;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          color: Colors.grey,
                            thickness: 0.5

                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            child: Text("12.30-1.00 Pm",
                              style: TextStyle(color: Colors.grey[400], fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10, top: 0),
                            child:  FlutterSwitch(
                              value: status6,
                              activeColor: Color(0xFFEFC55C),
                              inactiveColor: Color(0xFFBDBDBDBD),
                              height: 25,
                              width: 60,
                              onToggle: (val) {
                                setState(() {
                                  status6 = val;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          color: Colors.grey,
                            thickness: 0.5

                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            child: Text("1.30-2.00 Pm",
                              style: TextStyle(color: Colors.grey[400], fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10, top: 0),
                            child:  FlutterSwitch(
                              value: status7,
                              activeColor: Color(0xFFEFC55C),
                              inactiveColor: Color(0xFFBDBDBDBD),
                              height: 25,
                              width: 60,
                              onToggle: (val) {
                                setState(() {
                                  status7 = val;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          color: Colors.grey,
                            thickness: 0.5

                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            child: Text("2.30-3.00 Pm",
                              style: TextStyle(color: Colors.grey[400], fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10, top: 0),
                            child:  FlutterSwitch(
                              value: status8,
                              activeColor: Color(0xFFEFC55C),
                              inactiveColor: Color(0xFFBDBDBDBD),
                              height: 25,
                              width: 60,
                              onToggle: (val) {
                                setState(() {
                                  status8 = val;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          color: Colors.grey,
                            thickness: 0.5

                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 10, bottom: 15),
                            child: Text("3.30-4.00 Pm",
                              style: TextStyle(color: Colors.grey[400], fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10, bottom: 5),
                            child:  FlutterSwitch(
                              value: status9,
                              activeColor: Color(0xFFEFC55C),
                              inactiveColor: Color(0xFFBDBDBDBD),
                              height: 25,
                              width: 60,
                              onToggle: (val) {
                                setState(() {
                                  status9 = val;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 15, left: 15),
                        child: Text("Set as Leave",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15, bottom: 0, top: 20),
                      child:  FlutterSwitch(
                        value: status10,
                        activeColor: Color(0xFFEFC55C),
                        inactiveColor: Color(0xFFBDBDBDBD),
                        height: 25,
                        width: 60,
                        onToggle: (val) {
                          setState(() {
                            status10 = val;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,bottom: 15, right: 10, top: 25),
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
                            builder: (context) => BookingHistory()));


                  },
                  child: const Text("Save & Update",
                    style: TextStyle(fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
