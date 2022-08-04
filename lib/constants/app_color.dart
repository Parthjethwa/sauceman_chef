import 'package:flutter/material.dart';

class AppColor {
  static final accentColor = Color(0xFFFFF8EB);
  static final primaryColor = Color(0xFF1F1D19);
  static final primaryColorDark = Color(0xFF000000);
  static final cursorColor = Color(0xFF000000);
  static final secondaryColor = Color(0xFFEAB52E);
  static final dividerColor = Color(0xFFB2B2B2);
  static final addressColor = Color(0xFFF6F2E0);
  static final primaryTransparentColor = Color(0xB31F1D19);

  static final pagebackgroundColor = Color(0xFFF5F5F5);

  //onboarding colors
  static final onboarding1Color = Color(0xFFF9F9F9);
  static final onboarding2Color = Color(0xFFF6EFEE);
  static final onboarding3Color = Color(0xFFFFFBFC);

  static final textFieldColor = Color(0xFFF8F7F7);

  static final onboardingIndicatorDotColor = Color(0xFFE5E5E5);
  static final onboardingIndicatorActiveDotColor = Color(0xFF008080);

  //Shimmer Colors
  static final shimmerBaseColor = Colors.grey[300];
  static final shimmerHighlightColor = Colors.grey[200];

  //inputs
  static final inputFillColor = Colors.grey[200];
  static final iconHintColor = Colors.grey[500];

  static final forgotSuccessColor = Color(0xFFC8EEF1);
  static final forgotFailColor = Color(0xFFFFD3DA);

  //operation status colors
  static final chatbackGroundColor = Color(0xFFD3F5DA);
  static final successfulColor = Colors.green[400];
  static final waringColor = Colors.yellow[700];
  static final failedColor = Colors.red[400];
  static final cancelledColor = Colors.grey[700];
  static final enrouteColor = Colors.teal[500];

  //return color base on the status of the order
  static Color statusColor({String status}) {
    if (status.toLowerCase().contains("success") ||
        status.toLowerCase().contains("deliver")) {
      return successfulColor;
    } else if (status.toLowerCase().contains("pending")) {
      return waringColor;
    } else if (status.toLowerCase().contains("fail")) {
      return failedColor;
    } else if (status.toLowerCase().contains("cancel")) {
      return cancelledColor;
    } else if (status.toLowerCase().contains("enroute")) {
      return enrouteColor;
    } else {
      return waringColor;
    }
  }

  //
  static Color appBackground(BuildContext context) {
    var platformBrightness = MediaQuery.of(context).platformBrightness;
    if (platformBrightness == Brightness.dark) {
      return Colors.white;
    } else {
      return Colors.white;
    }
  }

  static Color listItemBackground(BuildContext context) {
    var platformBrightness = MediaQuery.of(context).platformBrightness;
    if (platformBrightness == Brightness.dark) {
      return Colors.grey[700];
    } else {
      return Colors.grey[100];
    }
  }

  static Color textFieldBackground(BuildContext context) {
    var platformBrightness = MediaQuery.of(context).platformBrightness;
    if (platformBrightness == Brightness.dark) {
      return Color(0xFFF8F7F7);
    } else {
      return Color(0xFFF8F7F7);
    }
  }

  static Color textColor(BuildContext context, {bool inverse = false}) {
    var platformBrightness = MediaQuery.of(context).platformBrightness;
    if (platformBrightness == Brightness.dark) {
      return Colors.black;
    } else {
      return Colors.black;
    }
  }

  static Color hintTextColor(BuildContext context) {
    var platformBrightness = MediaQuery.of(context).platformBrightness;
    if (platformBrightness == Brightness.dark) {
      return Colors.grey[600];
    } else {
      return Colors.grey[600];
    }
  }

  static Color amountTextColor(BuildContext context) {
    var platformBrightness = MediaQuery.of(context).platformBrightness;
    if (platformBrightness == Brightness.dark) {
      return accentColor;
    } else {
      return primaryColor;
    }
  }

  static Color bottomNavigationItemSelectedColor(
    BuildContext context,
  ) {
    return primaryColor;
  }

  static Color bottomNavigationItemUnselectedColor(
    BuildContext context,
  ) {
    var platformBrightness = MediaQuery.of(context).platformBrightness;
    if (platformBrightness == Brightness.dark) {
      return Color(0xFFB2B2B2);
    } else {
      return Color(0xFFB2B2B2);
    }
  }
}
