import 'package:flutter/material.dart';
import 'package:sauceman_chef/login/flash_alert.dart';
import 'package:sauceman_chef/login/phonenumber/login.bloc.dart';
import 'package:sauceman_chef/new_booking_request.dart';
import 'package:sauceman_chef/profile.dart';
import 'constants/app_color.dart';
import 'constants/app_paddings.dart';
import 'login/Otp.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'login/app_text_styles.dart';
import 'login/base.bloc.dart';
import 'login/phonenumber/platform_circular_progress_indicator.dart';
import 'login/phonenumber/ui_spacer.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sp = await SharedPreferences.getInstance();
  bool check = await sp.getBool("authentication")??false;
  runApp(MyApp(log: check,));
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.log}) : super(key: key);
  final bool log;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: log? Profile():ChefLogin(onSubmit: (String value) {  },),
    );
  }
}

class ChefLogin extends StatefulWidget {
  const ChefLogin({Key? key, required this.onSubmit}) : super(key: key);
  final ValueChanged<String> onSubmit;

  @override
  State<ChefLogin> createState() => _ChefLoginState();

}

class _ChefLoginState extends State<ChefLogin> {


  GlobalKey globalKey = GlobalKey();
  void showToast() {
    Fluttertoast.showToast(
        msg: "Mobile Number Doesn't Exist",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.yellow
    );
  }

  TextEditingController textFieldController = TextEditingController();
  bool _isLoading = false;

  //LoginBloc _loginBloc=LoginBloc();

  // This function will be triggered when the button is pressed
  void _startLoading() async {
    setState(() {
      _isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 3));

    setState(() {
      _isLoading = false;
    });
  }

  UiState _uiState=UiState.idle;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   /* _loginBloc.showAlert.listen((event) {
      if(event){
        ShowFlash(
          context,
          _loginBloc.dialogData.title,
          _loginBloc.dialogData.body,
          _loginBloc.dialogData.dialogType==DialogType.failed?FlashType.failed:FlashType.success,
        ).show();
      }
    });*/
  }
  // LoginBloc _loginBloc = LoginBloc();
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
        key: globalKey,
        appBar: AppBar(
          backgroundColor: Colors.grey[50],
          elevation: 0,
        ),
        body: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: 60, right: 0),
                  child: Image.asset(
                    "assets/images/logo.png",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, left: 0),
                  child: Text(
                    "Enter your phone number and we will",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 0),
                  child: Text(
                    "send an OTP to continue",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 20, top: 35),
                  child: Text(
                    "10 Digit mobile number",
                    style:AppTextStyle.h4TitleTextStyle(color: Colors.grey[500]!),
                )),
               Container(
                    // padding: EdgeInsets.only(top: 8, left: 20, right: 20),
                    margin: const EdgeInsets.only(left: 20,right: 20,top: 4),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 0, left: 15),
                          child: Text(
                            "+91",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 0,
                              left: 10,
                              right: 20,
                            ),
                            child: TextField(
                              controller: textFieldController,
                              maxLength: 10,
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black),
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
                GestureDetector(
                 onTap: _uiState !=UiState.loading?(){
                     if(textFieldController.text.isNotEmpty && textFieldController.text.length==10){
                       _verifymobile();
                     }else{
                       ShowFlash(
                         context,
                         "Please enter valid mobile number",
                         "",
                         FlashType.failed
                       ).show();
                     }
                 }:null,
                 child:  Container(
                     padding: EdgeInsets.only(top: 16, bottom: 16,),
                     margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                     width: double.infinity,
                     decoration: BoxDecoration(
                         border: Border.all(color: Colors.grey),
                         borderRadius: BorderRadius.all(Radius.circular(10)),
                         color: Colors.black
                     ),
                     child: Center(
                       child: _uiState !=UiState.loading?Text("Continue",
                         style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                       ):const CircularProgressIndicator(),
                     )
                 ),
               ),


                /* UiSpacer.verticalSpace(space: 20),
                StreamBuilder<UiState>(
                  stream: _loginBloc.uiState,
                  builder: (context, snapshot) {
                    final uiState = snapshot.data;

                    return Container(
                        width: double.infinity,
                        child:CustomButton(
                          padding: AppPaddings.mediumButtonPadding(),
                          color: AppColor.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            //side: BorderSide(color: AppColor.primaryColor)
                          ),
                          onPressed:
                          uiState != UiState.loading ? () {
                            //Navigator.pushNamed(context, AppRoutes.registerRoute,);
                            _loginBloc.processOTP(context: viewcontext);
                          } : null,
                          child: uiState != UiState.loading
                              ? Text(
                            "Continue",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          )
                              : PlatformCircularProgressIndicator(),
                        ));
                  },
                ),*/
                Padding(
                  padding: EdgeInsets.only(top: 17, bottom: 15),
                  child: GestureDetector(
                      onTap: () {},
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context) => LoginChef()));
                      // Image tapped
                      child: Text(
                        "Forget phone number",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                ),


                //   Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       ElevatedButton(
                //         onPressed: () {
                //           Navigator.of(context).push(MaterialPageRoute(
                //               builder: (context) => ToastContext()));
                //           Navigator.of(context).push(
                //               MaterialPageRoute(builder: (context) => LoginChef()));
                //         },
                //         child: Text("Flutter Toast Context"),
                //       ),
                //     ],),
                // ]),
              ],
              )
            ]
        )
    );
  }

  Future<void> _verifymobile() async {
    setState(() {
      _uiState=UiState.loading;
    });
    final response = await http.post(
      Uri.parse('http://52.71.17.178:5000/api/mobile_verification_with_otp'),
      body: {
        "mobile_no":textFieldController.text.toString().trim(),
      },
    );

    setState(() {
      _uiState=UiState.done;
    });
    var resp=json.decode(response.body);
    var otp=resp["otp_number"];
    var message=resp["message"];
    print(resp);
    if(message=="OTP sent successfully")  {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginChef(mobile: textFieldController.text,serverotp: otp),

          ));
    }
    else{
      showToast();
    }
  }
  addIntToSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.getInt('mobile_no', );
    return int;
  }
}
