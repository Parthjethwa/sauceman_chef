import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:sauceman_chef/booking.dart';
import 'package:timer_button/timer_button.dart';

import 'package:sauceman_chef/booking.dart';

class LoginChef extends StatefulWidget {
  const LoginChef({Key? key}) : super(key: key);

  @override
  State<LoginChef> createState() => _LoginChefState();
}

class _LoginChefState extends State<LoginChef> {
  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [

          Container(
            alignment: Alignment.topLeft,

              padding: EdgeInsets.only(top: 20, left: 13),
              child: Text("Verify Details" ,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),

          Container(
            alignment: Alignment.topLeft,

              padding: EdgeInsets.only(top: 10, left: 15),
              child: Text("OTP Sent to +91 9601009939",
                style: TextStyle(fontSize: 14,),
              ),
            ),

          Padding(padding: EdgeInsets.only(top: 30, left: 10, right: 10),
            child:OTPTextField(
                controller: otpController,
                length: 6,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 50,
                fieldStyle: FieldStyle.box,
                otpFieldStyle: OtpFieldStyle(
                    focusBorderColor: Colors.orange //(here)
                ),
                outlineBorderRadius: 5,
                style: TextStyle(fontSize: 17),
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  print("Completed: " + pin);
                }),
          ),
          Padding(
            padding: EdgeInsets.only(top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child:
                  Container(
                    alignment: Alignment.center,
                    //width: MediaQuery.of(context).size.width/3,
                    //height: 50,
                    padding: EdgeInsets.only(top: 15, bottom: 15),
                    margin: EdgeInsets.only(left: 15, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)
                      ),
                    ),
                    child: Text("Resend SMS in 25",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child:
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      //height: 50,
                      //width: MediaQuery.of(context).size.width/3,
                      margin: EdgeInsets.only(right: 15, left: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                      ),
                      child: Text("Call Me in 25",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      )
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child:  Container(
                    margin: EdgeInsets.only(left: 20,bottom: 15, right: 20),
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
                      child: const Text('Verify & Proceed',
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
    );
  }
}

/*
FlatButton(
                  padding: const EdgeInsets.fromLTRB(0, 12, 5, 11),
                  minWidth: 400.0,
                  height: 60.0,
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
                  child: const Text('Verify and Proceed',
                    style: TextStyle(fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
 */

/*
Padding(
                 padding: EdgeInsets.only(top: 0, left: 20, right: 0),
                 child: FlatButton(
                   padding: const EdgeInsets.fromLTRB(0, 12, 5, 11),
                   minWidth: 180.0,
                   height: 60.0,
                   color: Colors.black,
                   textColor: Colors.white,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                   ),
                   onPressed: () {
                     Navigator.of(context).push(
                         MaterialPageRoute(
                             builder: (context) => Booking()));
                   },
                   child: const Text('Call Me',
                     style: TextStyle(fontSize: 22,
                       color: Colors.white,
                     ),
                   ),
                 ),
               ),
 */