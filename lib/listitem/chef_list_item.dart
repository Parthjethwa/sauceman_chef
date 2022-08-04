import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sauceman_chef/constants/app_color.dart';
import 'package:sauceman_chef/constants/app_sizes.dart';
import 'package:sauceman_chef/constants/app_text_direction.dart';
import 'package:sauceman_chef/constants/app_text_styles.dart';

class ChefsListViewItem extends StatelessWidget {
  final String image;
  // final Function(DoctorCategory) onPressed;
  const ChefsListViewItem({
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        //onTap: () => this.onPressed(this.category),
        highlightColor: Colors.transparent,
        splashColor: AppColor.accentColor.withOpacity(0.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                //padding: AppPaddings.buttonPadding(),
               width: (AppSizes.getScreenWidth(context) / 3) - 20,
                decoration: BoxDecoration(
                  color: Color(0xFFF8F7F7),
                  borderRadius: AppSizes.containerBorderRadiusShape(radius: 8),
                 /* boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(0, 1.0),
                      spreadRadius: 2.0,
                      blurRadius: 2.0,
                    ),
                  ],*/
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
                    Image.asset(
                      image,
                      fit: BoxFit.cover,
                    )
                  ],
                )),
            Container(
                padding: EdgeInsets.only(top: 6),
                child: Text(
                  "John",
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
                  "Muilti- cuisine",
                  style: AppTextStyle.h7TitleTextStyle(
                      color: AppColor.textColor(context),
                      fontWeight: FontWeight.w300),
                  textAlign: TextAlign.start,
                  //overflow: TextOverflow.ellipsis,
                  //maxLines: 2,
                  textDirection: AppTextDirection.defaultDirection,
                )),
          ],
        ));
  }
}
