import 'dart:io';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sauceman_chef/bloc/base.bloc.dart';
import 'package:sauceman_chef/constants/validation_messages.dart';
import 'package:sauceman_chef/validators.dart';

class RegisterBloc extends BaseBloc {
  //Auth repository
 // AuthRepository _authRepository = new AuthRepository();
  late String appSignature;
  //text editing controller
  TextEditingController nameTEC = new TextEditingController(
      // text: "John Doe",
      );
  //add current timestamp so every test registeration generates different email addresses
  TextEditingController mobileTEC = new TextEditingController(
      // text: "client_${DateTime.now().millisecondsSinceEpoch}@demo.com",
      );

 // User user;

  BehaviorSubject<bool> _nameValid = BehaviorSubject<bool>.seeded(false);
  //BehaviorSubject<bool> _lnameValid = BehaviorSubject<bool>.seeded(false);
 // BehaviorSubject<bool> _emailValid = BehaviorSubject<bool>.seeded(false);
  BehaviorSubject<bool> _phoneNumberValid = BehaviorSubject<bool>.seeded(false);
  //BehaviorSubject<bool> _passwordValid = BehaviorSubject<bool>.seeded(false);
  //BehaviorSubject<bool> _confirmPasswordValid = BehaviorSubject<bool>.seeded(false);

  //entered data variables getter
/*  Stream<dynamic> get profilePhoto => _profilePhoto.stream;
  Stream<dynamic> get medicalReport => _medicalReport.stream;*/
  Stream<bool> get validName => _nameValid.stream;
 // Stream<bool> get validLastName => _lnameValid.stream;
 // Stream<bool> get validEmailAddress => _emailValid.stream;
  Stream<bool> get validPhoneNumber => _phoneNumberValid.stream;
 // Stream<bool> get validPassword => _passwordValid.stream;
 // Stream<bool> get validConfirmPassword => _confirmPasswordValid.stream;

  @override
  void initBloc() {
    super.initBloc();
     /*SmsAutoFill().getAppSignature.then((signature) {
        appSignature=signature;
      });*/
  }

  //process login when user tap on the login button
/*  void processSendOTP({String mobile}) async {

    final name = nameTEC.text;
    final email =emailAddressTEC.text;

    //check if the user entered email & password are valid

    if (validateName(name) && validateEmailAddress(email)){
      //update ui state
      setUiState(UiState.loading);
      final resultDialogData = await _authRepository.sendOTP(
        mobile: mobile
      );

      //update ui state after operation
      setUiState(UiState.done);

      //checking if operation was successful before either showing an error or redirect to home page
      if (resultDialogData.dialogType == DialogType.success) {
        // setUiState(UiState.redirect);
        user=User();
        user.cutomerMobile=mobile;
        user.customerEmail=email;
        user.customerName=name;
        user.otp=int.parse(resultDialogData.title);
        user.loginRegister=false;
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
  }*/

  //as user enters name, we are doing name validation, error if its empty of less than 3 words
  bool validateName(String value) {
    if (value.isEmpty || value.length < 3) {
      _nameValid.addError(ValidationMessages.invalidName);
      return false;
    } else {
      _nameValid.add(true);
      return true;
    }
  }


  //as user enters phone, we are doing phone nuber validation
  bool validatePhone(String value) {
    if (!Validators.isPhoneNumberValid(value)) {
      _phoneNumberValid.addError(ValidationMessages.invalidPhoneNumber);
      return false;
    } else {
      _phoneNumberValid.add(true);
      return true;
    }
  }

}
