
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sauceman_chef/bloc/base.bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sauceman_chef/constants/app_strings.dart';

class LoginBloc extends BaseBloc {
  //Auth repository
  //AuthRepository _authRepository = new AuthRepository();

  //text editing controller
  TextEditingController mobileNumberTEC = new TextEditingController();
  TextEditingController passwordTEC = new TextEditingController();

  //view entered data
  BehaviorSubject<bool> _mobileValid = BehaviorSubject<bool>.seeded(false);
  BehaviorSubject<bool> _passwordValid = BehaviorSubject<bool>.seeded(false);

  //entered data variables getter
  Stream<bool> get validMobileNumber => _mobileValid.stream;
  Stream<bool> get validPasswordAddress => _passwordValid.stream;


  bool loginButtonStatus=false;

  bool OTP_OR_REGISTER=false;

  @override
  void initBloc() {
    super.initBloc();
   // initApp();
  }

  void initApp() async {
    // FirebaseApp defaultApp = await Firebase.initializeApp();
    //_firebaseAuth = FirebaseAuth.instanceFor(app: defaultApp);
  }

  //process login when user tap on the login button
  /*void processOTP({BuildContext context}) async {
    final mobile = mobileNumberTEC.text;
    //final password = passwordTEC.text;

    //check if the user entered email & password are valid
    if (validateMobileNumber(mobile)) {
      //update ui state
      setUiState(UiState.loading);
      final resultDialogData = await _authRepository.loginOTP(
         mobile: mobile
      );

      //update ui state after operation
      setUiState(UiState.done);

      //checking if operation was successful before either showing an error or redirect to home page
      if (resultDialogData.dialogType == DialogType.success) {
       // setUiState(UiState.redirect);
        user=User();
        user.cutomerMobile=mobile;
        if(resultDialogData.title!="go to registration"){
          OTP_OR_REGISTER=true;
          user.otp=int.parse(resultDialogData.title);
          user.loginRegister=true;
        }else{
          OTP_OR_REGISTER=false;
          user.loginRegister=false;
        }
       // goToVerifyOTP(context);
        setUiState(UiState.redirect);
      } else {
        //prepare the data model to be used to show the alert on the view
        dialogData.title = resultDialogData.title;
        dialogData.body = resultDialogData.body;
        dialogData.backgroundColor = AppColor.failedColor;
        dialogData.iconData = FlutterIcons.error_mdi;
        //notify listners to show show alert
        setShowAlert(true);
      }
    }
  }

  //as user enters email address, we are doing email validation
  bool validateEmailAddress(String value) {
    if (!Validators.isEmailValid(value)) {
      _mobileValid.addError(AuthStrings.invalidPhoneMessage);
      return false;
    } else {
      _mobileValid.add(true);
      return true;
    }
  }

  //as user enters password, we are doing password validation
  bool validatePassword(String value) {
    //validating if password, contains at least one uppercase and length is of 6 minimum charater
    if (!Validators.isPasswordValid(value)) {
      _passwordValid.addError(AuthStrings.invalidPhoneMessage);
      return false;
    } else {
      _passwordValid.add(true);
      return true;
    }
  }

  bool validateMobileNumber(String value) {
    //validating if password, contains at least one uppercase and length is of 6 minimum charater
    if (!(mobileNumberTEC.text.length==10)) {
      _mobileValid.addError(AuthStrings.invalidPhoneMessage);
      loginButtonStatus=false;
      return false;
    } else {
      _mobileValid.add(true);
      loginButtonStatus=true;
      return true;
    }
  }

  void goToVerifyOTP(BuildContext context) {
    Navigator.pushNamed(
      context,
      AppRoutes.verifyOTPRoute,
      arguments: user
    );
  }

  void goToRegister(BuildContext context) {
    Navigator.pushNamed(
        context,
        AppRoutes.registerRoute,
        arguments: user
    );
  }*/

  bool validateMobileNumber(String value) {
    //validating if password, contains at least one uppercase and length is of 6 minimum charater
    if (!(mobileNumberTEC.text.length==10)) {
      _mobileValid.addError(AppStrings.invalidPhoneMessage);
      loginButtonStatus=false;
      return false;
    } else {
      _mobileValid.add(true);
      loginButtonStatus=true;
      return true;
    }
  }

}




