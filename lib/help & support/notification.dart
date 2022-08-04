import 'dart:ui';

import 'package:flutter/material.dart';

class Notificationlast extends StatefulWidget {
  const Notificationlast({Key? key}) : super(key: key);

  @override
  State<Notificationlast> createState() => _NotificationlastState();
}

class _NotificationlastState extends State<Notificationlast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 28, // <-- Use this

        elevation: 0.5,
        automaticallyImplyLeading: false,
        title: Text("Notifications",
          style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.clear,
              color: Colors.black,
            ),
            onPressed: () {
            },
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0, left: 15, bottom: 5),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 0.5
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  padding: EdgeInsets.all(8),
                  child: Image.asset("assets/notify/img.png", height: 20,),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 10),
                    child: Text("2 New booking requests",
                      style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 10),
                    child: Text("Lorem Ipsum is simply dummy text of the printing",
                      style: TextStyle(fontSize: 12, color: Colors.grey,),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0, left: 10),
                    child: Text("and typesetting industry.",
                      style: TextStyle(fontSize: 12, color: Colors.grey,),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7, left: 10),
                    child: Text("2 min ago",
                      style: TextStyle(fontSize: 10, color: Colors.grey,),
                    ),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5),
            child: Divider(),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 0, left: 15, bottom: 17, ),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            width: 0.5
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    padding: EdgeInsets.all(8),
                    child: Image.asset("assets/notify/img_1.png", height: 20,),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: Text("1 Booking cancelled",
                        style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 10),
                      child: Text("Lorem Ipsum is simply dummy text of the printing",
                        style: TextStyle(fontSize: 12, color: Colors.grey,),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0, left: 10),
                      child: Text("and typesetting industry.",
                        style: TextStyle(fontSize: 12, color: Colors.grey,),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 7, left: 10),
                      child: Text("2 min ago",
                        style: TextStyle(fontSize: 10, color: Colors.grey,),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5),
            child: Divider(),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 0, left: 15, bottom: 17, ),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            width: 0.5
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    padding: EdgeInsets.all(8),
                    child: Image.asset("assets/notify/img_2.png", height: 20,),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: Text("2 Orders was completed successfully",
                        style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 10),
                      child: Text("Lorem Ipsum is simply dummy text of the printing",
                        style: TextStyle(fontSize: 12, color: Colors.grey,),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0, left: 10),
                      child: Text("and typesetting industry.",
                        style: TextStyle(fontSize: 12, color: Colors.grey,),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 7, left: 10),
                      child: Text("2 min ago",
                        style: TextStyle(fontSize: 10, color: Colors.grey,),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5),
            child: Divider(),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 0, left: 15, bottom: 17, ),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            width: 0.5
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    padding: EdgeInsets.all(8),
                    child: Image.asset("assets/notify/img_3.png", height: 20,),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: Text("2 Recent Payouts",
                        style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 10),
                      child: Text("Lorem Ipsum is simply dummy text of the printing",
                        style: TextStyle(fontSize: 12, color: Colors.grey,),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0, left: 10),
                      child: Text("and typesetting industry.",
                        style: TextStyle(fontSize: 12, color: Colors.grey,),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 7, left: 10),
                      child: Text("2 min ago",
                        style: TextStyle(fontSize: 10, color: Colors.grey,),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5),
            child: Divider(),
          ),

          Padding(
            padding: EdgeInsets.only(bottom: 0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 0, left: 15, bottom: 17, ),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            width: 0.5
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    padding: EdgeInsets.all(8),
                    child: Image.asset("assets/notify/img.png", height: 20,),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: Text("2 New booking requests",
                        style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 10),
                      child: Text("Lorem Ipsum is simply dummy text of the printing",
                        style: TextStyle(fontSize: 12, color: Colors.grey,),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0, left: 10),
                      child: Text("and typesetting industry.",
                        style: TextStyle(fontSize: 12, color: Colors.grey,),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 7, left: 10),
                      child: Text("2 min ago",
                        style: TextStyle(fontSize: 10, color: Colors.grey,),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5),
            child: Divider(),
          ),

        ],
      ),
    );
  }
}
