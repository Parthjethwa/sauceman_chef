import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saucemen/constants/app_color.dart';
import 'package:saucemen/constants/app_paddings.dart';
import 'package:saucemen/constants/app_sizes.dart';
import 'package:saucemen/constants/app_text_direction.dart';
import 'package:saucemen/constants/app_text_styles.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:saucemen/utils/custom_dialog.dart';
import 'package:saucemen/views/order_summary/chef_bottom_listing_content.dart';
import 'package:saucemen/widgets/buttons/custom_button.dart';
import 'package:saucemen/widgets/platform/platform_circular_progress_indicator.dart';

class ChefListingViewItem extends StatelessWidget {
  final String image;
  // final Function(DoctorCategory) onPressed;
  const ChefListingViewItem({
    this.image,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
         onTap: () {
           showChefBottomListingDialog(context);
         },
        highlightColor: Colors.transparent,
        splashColor: AppColor.accentColor.withOpacity(0.5),
        child: Container(
         decoration: BoxDecoration(
              //color: Color(0xFFF8F7F7),
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey[300],width: 0.5),
            ),
        child:Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                  //color: Color(0xFFF8F7F7),
                  borderRadius: AppSizes.containerBorderRadiusShape(radius: 8),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        alignment: Alignment.topRight,
                        child:Container(
                            padding: EdgeInsets.only(left: 5,right: 5,top: 2,bottom: 2),
                            margin: EdgeInsets.only(right: 5,top: 5),
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFFECF5EB)
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  FlutterIcons.star_ent,
                                  color: Color(0xFF5D9E52),
                                  size: 15,
                                ),
                                Padding(padding:EdgeInsets.only(left: 3),
                                    child:Text(
                                      "4.2",
                                      style: AppTextStyle.h7TitleTextStyle(
                                        color: Colors.black,
                                      ),
                                      textAlign: TextAlign.center,
                                      //overflow: TextOverflow.ellipsis,
                                      //maxLines: 2,
                                      textDirection: AppTextDirection.defaultDirection,
                                    ))
                              ],
                            ))),
                    Container(
                      width: 84,
                      height: 84,
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        color: Color(0xFFF8F7F7),
                      ),
                      child:Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ))
                  ],
                )),
            Container(
                padding: EdgeInsets.only(top: 6),
                child: Text(
                  "John Matthew",
                  style: AppTextStyle.h4TitleTextStyle(
                      color: AppColor.textColor(context),
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.start,
                  //overflow: TextOverflow.ellipsis,
                  //maxLines: 2,
                  textDirection: AppTextDirection.defaultDirection,
                )),
            Container(
                padding: EdgeInsets.only(top: 4),
                child: Text(
                  "Multi-cuisine",
                  style: AppTextStyle.h7TitleTextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start,
                  //overflow: TextOverflow.ellipsis,
                  //maxLines: 2,
                  textDirection: AppTextDirection.defaultDirection,
                )),
            Container(
                padding: EdgeInsets.only(top: 4),
                child: Text(
                  "₹560 for two",
                  style: AppTextStyle.h7TitleTextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start,
                  //overflow: TextOverflow.ellipsis,
                  //maxLines: 2,
                  textDirection: AppTextDirection.defaultDirection,
                )),
            Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 20,right: 20,bottom: 12,top: 8),
                child: CustomButton(
                  padding: AppPaddings.smallButtonPadding(),
                  color: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    //side: BorderSide(color: AppColor.primaryColor)
                  ),
                  onPressed:(){},
                  child:  Text(
                    "Book Now",
                    style: AppTextStyle.h4TitleTextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                    textDirection:
                    AppTextDirection.defaultDirection,
                  ),
                )),

          ],
        )));
  }

  void showChefBottomListingDialog(BuildContext context){
    CustomDialog.showCustomBottomSheet(
        context,
        backgroundColor: Colors.transparent,
        content: ChefBottomListingContentPopup()
    );
  }
}
