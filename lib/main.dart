import 'dart:ui';
import 'package:flutter/material.dart';
import 'Otp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChefLogin(),
    );
  }
}
class ChefLogin extends StatefulWidget {
  const ChefLogin({Key? key}) : super(key: key);

  @override
  State<ChefLogin> createState() => _ChefLoginState();
}

class _ChefLoginState extends State<ChefLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  //String _name;
  //String _email;
  late String _mobile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //resizeToAvoidBottomInset: false,
        //backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body:ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 60, right: 0),
                    child: Image.asset("assets/images/logo.png",
                      //height: MediaQuery.of(context).size.height / 5,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 25, left: 0),
                    child: Text(
                      "Enter your phone number and we will",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5, left: 0),
                    child: Text(
                      "send an OTP to continue",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 20, top: 35),
                    child: Text("10 Digit mobile number",
                      style: TextStyle(fontSize: 10, color: Colors.grey,),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 0, left: 15),
                            child: Text("+91",
                              style: TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                          Expanded(
                            child: Padding(padding: EdgeInsets.only(top: 0, left: 10, right: 20,),
                              child: TextField(
                                maxLength: 10,
                                style: TextStyle(
                                    fontSize: 15.0,
                                    // height: 2.0,
                                    color: Colors.black
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  //hintText: 'Username',
                                  counterText: "",
                                ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.start,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Padding(padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                    child: FlatButton(
                      //padding: const EdgeInsets.fromLTRB(0, 12, 5, 11),
                      //minWidth: 400.0,
                      minWidth: double.infinity,
                      height: 50.0,
                      color: Colors.black,
                      textColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => LoginChef()));
                      },
                      child: const Text('Continue',
                        style: TextStyle(fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 17, left: 0),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => LoginChef()));
                        }, // Image tapped
                        child: Text("Forget phone number",
                          style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                    ),
                  )
                ]
            )
          ],
        )
    );
  }
  Widget FormUI() {
    return new Column(
      children: <Widget>[
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Mobile'),
          keyboardType: TextInputType.phone,
        ),
        new SizedBox(
          height: 10.0,
        ),
        new RaisedButton(
          onPressed: _validateInputs,
          child: new Text('Validate'),
        )
      ],
    );
  }
  void _validateInputs() {}
}