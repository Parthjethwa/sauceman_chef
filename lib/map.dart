import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';
import 'package:slider_button/slider_button.dart';


import 'code.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center =  LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  late final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Container(
              //height: MediaQuery.of(context).size.height/15,
              //margin: EdgeInsets.only(top: 15, bottom: 15),
                alignment: Alignment.center,
                color: Color(0xFFF6F2E0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 15),
                          child: Icon(Icons.location_on, size: 18, color: Colors.grey,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text("ADDRESS FOR SERVICES", style: TextStyle(fontSize: 10,
                              color: Colors.grey, fontWeight: FontWeight.bold),),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child:  Padding(
                              padding: EdgeInsets.only(top: 10, right: 15),
                              child: Icon(Icons.clear, size: 22, color: Colors.grey,),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0, left: 30, bottom: 15),
                      child: Text("Mysore Rd, Jnana Bharathi, Bangaluru, Karnataka 560056,India",
                        style: TextStyle(fontSize: 14,
                            color: Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                  ],
                )
            ),
          ),
          Expanded(
            child:
            Container(
              //height: 640,
              //width: 400,
              padding: EdgeInsets.only(top: 0, left: 0, right: 0),
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: const CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
            ),
          ),
          Container(
            //color: Colors.red,
              padding: EdgeInsets.only(top: 15, bottom: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)
                  )
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15, bottom: 10),
                        child: Text("Pushkar Rathee",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10, bottom: 10),
                              child: Image.asset("assets/images/chat.png",
                                width: 30,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15, bottom: 10),
                              child:  Image.asset("assets/images/call.png",
                                width: 30,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                    child: SliderButton(
                      action: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => Code()));
                      },
                      label : Text("              Start Cooking",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,),
                      alignLabel: Alignment.center,
                      icon: Center(
                          child: Icon(
                            Icons.keyboard_double_arrow_right,
                            color: Colors.white,
                            size: 22.0,
                            //semanticLabel: 'Text to announce in accessibility modes',
                          )),

                      ///Change All the color and size from here.
                      width: double.infinity,
                      radius: 10,
                      buttonColor: Colors.black,
                      backgroundColor: Color(0xFF2D2A24),
                      highlightedColor: Colors.white,
                      baseColor: Colors.white,
                    ),
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}

/*
 Container(
                    //height: 80,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: SwipingButton(text: "Start Cooking",
                      onSwipeCallback:(){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Code()));
                    },
                      swipeButtonColor: Colors.black,
                      backgroundColor: Color(0xFF2D2A24),
                      //height: 70,
                    ),
                  ),
 */