import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sauceman_chef/cooking%20menu.dart';
import 'dart:async';

import '../map.dart';

class Occassion extends StatefulWidget {
  const Occassion({Key? key}) : super(key: key);

  @override
  State<Occassion> createState() => _OccassionState();
}

class _OccassionState extends State<Occassion> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center =  LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 28, // <-- Use this
          elevation: 1,
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          title: Text("Booking Details", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold, fontSize: 14),),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Container(
                    //height: MediaQuery.of(context).size.height/9,
                    //width: MediaQuery.of(context).size.width/1,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 0, left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Customer Name",
                                style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Text("Today", style: TextStyle(color: Colors.grey, fontSize: 12),),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10,),
                              child: Image.asset("assets/images/img.png",
                                height: MediaQuery.of(context).size.height/18,
                                width: MediaQuery.of(context).size.width/6,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.bottomRight,
                                child:  Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Text("12:30 PM", style: TextStyle(color: Colors.grey, fontSize: 12),),
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
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 10, top: 0, bottom: 0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => CookingMenu()));
                              },
                              child: Text("View Cooking Menu",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),
                              ),
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: 0),
                            child: IconButton(
                              icon: Icon(Icons.arrow_forward_ios_outlined, size: 13, color: Colors.black,),
                              onPressed: () {  Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => CookingMenu())); },
                            )
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 15, top: 15),
                        child: Image.asset("assets/payment/st.png", height: 25,),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(top: 25, left: 15),
                            child: Text("Preference", style: TextStyle(fontSize: 12, color: Colors.grey),),
                          ),
                          Padding(padding: EdgeInsets.only(top: 5, left: 15),
                            child: Text("Veg", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),

                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(padding: EdgeInsets.only(left: 15, top: 15),
                                child: Image.asset("assets/payment/st.png", height: 25,),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding: EdgeInsets.only(top: 25, left: 15, ),
                                    child: Text("Cuisine", style: TextStyle(fontSize: 12, color: Colors.grey),),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 5, left: 15, right: 40),
                                    child: Text("Chinese", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 15, top: 15),
                        child: Image.asset("assets/payment/dish.png", height: 25,),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(top: 25, left: 15),
                            child: Text("No. of Meal Course", style: TextStyle(fontSize: 12, color: Colors.grey),),
                          ),
                          Padding(padding: EdgeInsets.only(top: 5, left: 15),
                            child: Text("02", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),

                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(padding: EdgeInsets.only(left: 15, top: 15),
                                child: Image.asset("assets/payment/people.png", height: 25,),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding: EdgeInsets.only(top: 25, left: 15, right: 15),
                                    child: Text("No. of Dinners", style: TextStyle(fontSize: 12, color: Colors.grey),),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 5, left: 15, right: 0),
                                    child: Text("03", style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 15, right: 15),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15, left: 15),
                    child: Text("Payment Details",
                      style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
                      //textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 15),
                      child:  Text("Booking Amount",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, right: 15),
                      child:  Text("₹494",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 15),
                      child:  Text("Taxes & Charges",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, right: 15),
                      child:  Text("₹50",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 15),
                      child:  Text("You Will Get",
                        style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, right: 15),
                      child:  Text("₹515",
                        style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height/15,
                    //margin: EdgeInsets.only(top: 15, bottom: 15),
                    alignment: Alignment.centerLeft,
                    color: Color(0xFFF6F2E0),
                    child: Text("Make sure you wear your sanitized safety equipments. ",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 15, left: 15),
                    child: Text("Customer Address",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 15),
                      child: Icon(Icons.location_on, size: 18, color: Colors.grey,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 5),
                      child: Text("Jnana Bharathi",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, ),),
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 35),
                    child: Text("Neeladri Main Road, bengaluru, Karnataka, India, Landmark : NA",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  height: 350,
                  //width: 400,
                  padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: const CameraPosition(
                      target: _center,
                      zoom: 11.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15, left: 15, right: 15),
                  child: FlatButton(
                    minWidth: 400.0,
                    height: 55.0,
                    color: Colors.black,
                    textColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                        )
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Map()));},
                    child: const Text('Get Directions   ❯',
                      style: TextStyle(fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ]
          ),
        )
    );
  }
}
