import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:sauceman_chef/profile.dart';

class Code extends StatefulWidget {
  const Code({Key? key}) : super(key: key);

  @override
  State<Code> createState() => _CodeState();
}

class _CodeState extends State<Code>{
OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height*0.2,
      ),
      Padding(
        padding: EdgeInsets.only(top: 50),
        child: Container(
          alignment: Alignment.center,
          child: Text("Enter the code",
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
      Padding(padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        child:OTPTextField(
            controller: otpController,
            length: 4,
            width: MediaQuery.of(context).size.width,
            textFieldAlignment: MainAxisAlignment.spaceEvenly,
            fieldWidth: 50,
            fieldStyle: FieldStyle.box,
            //inputFormatter: const [keepToString],
            otpFieldStyle: OtpFieldStyle(
                focusBorderColor: Colors.orange
              //(here)
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
                            builder: (context) => Profile()));
                  },
                  child: const Text('Confirm',
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
