import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saucemen/constants/app_color.dart';
import 'package:saucemen/constants/app_paddings.dart';
import 'package:saucemen/constants/app_routes.dart';
import 'package:saucemen/constants/app_sizes.dart';
import 'package:saucemen/constants/app_text_direction.dart';
import 'package:saucemen/constants/app_text_styles.dart';
import 'package:flutter_svg/svg.dart';
import 'package:saucemen/utils/ui_spacer.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:saucemen/widgets/buttons/custom_button.dart';

class ChefBottomListItem extends StatefulWidget {
  const ChefBottomListItem({Key key}) : super(key: key);

  @override
  State<ChefBottomListItem> createState() => _ChefBottomListItemState();
}

class _ChefBottomListItemState extends State<ChefBottomListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppSizes.getScreenheight(context) * 0.6,
        width: AppSizes.getScreenWidth(context)-60,
        margin: EdgeInsets.only(left: 5,right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.white
        ),
        //padding: AppPaddings.defaultPadding(),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 260,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                              child: Image.asset(
                                "assets/images/chef_bottom.png",
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 200,
                              ))),
                      Positioned(
                          top: 165,
                          child: Container(
                              alignment: Alignment.topCenter,
                              width: AppSizes.getScreenWidth(context)-60,
                              child:Stack(
                                children: [
                                  Container(
                                    width: 96,
                                    height: 96,
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(1000),
                                        color: Colors.white),
                                    child: CircleAvatar(
                                        radius: 96,
                                        backgroundColor: Color(0xFFF8E9C7),
                                        child: Image.asset(
                                          "assets/images/chef.png",
                                          width: 56,
                                          height: 56,
                                        )),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 65),
                                    width: 90,
                                    alignment: Alignment.centerRight,
                                    child: SvgPicture.asset(
                                      "assets/images/vacasine.svg",
                                      width: 24,
                                      height: 24,
                                    ),
                                  )
                                ],
                              )))
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text("Chef John Matthew",style: AppTextStyle.h3TitleTextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FlutterIcons.star_ent,size: 16,color: Color(0xFF5D9E52),),
                  SizedBox(width: 4),
                  Text("4.2",style: AppTextStyle.h4TitleTextStyle(color: Colors.black54),),
                  Container(
                    width: 3,
                    height: 3,
                    margin: EdgeInsets.only(left: 8,right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black54,
                    ),
                  ),
                  Text("Multi-cuisine",style: AppTextStyle.h4TitleTextStyle(color: Colors.black54),),
                  Container(
                    width: 3,
                    height: 3,
                    margin: EdgeInsets.only(left: 8,right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black54,
                    ),
                  ),
                  Text("₹518 for two",style: AppTextStyle.h4TitleTextStyle(color: Colors.black54),),

                ],
              ),
              UiSpacer.verticalSpace(space: 16),
              Container(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child:Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(right: 10),
                            child: CustomButton(
                              padding: AppPaddings.smallButtonPadding(),
                              color: AppColor.secondaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                //side: BorderSide(color: AppColor.primaryColor)
                              ),
                              onPressed:(){
                                Navigator.pushNamed(context, AppRoutes.chefProfileDetailPage);
                              },
                              child:  Text(
                                "View Profile",
                                style: AppTextStyle.h4TitleTextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.start,
                                textDirection:
                                AppTextDirection.defaultDirection,
                              ),
                            )),),
                      Expanded(
                        flex: 4,
                        child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(right: 10),
                            child: CustomButton(
                              padding: AppPaddings.smallButtonPadding(),
                              color: AppColor.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                //side: BorderSide(color: AppColor.primaryColor)
                              ),
                              onPressed:(){
                                Navigator.pushNamed(context, AppRoutes.chefMenuRoute);
                              },
                              child:  Text(
                                "Book",
                                style: AppTextStyle.h4TitleTextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.start,
                                textDirection:
                                AppTextDirection.defaultDirection,
                              ),
                            )),),
                      Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black54,width: 0.5),
                              ),
                              child: Icon(FlutterIcons.favorite_border_mdi,size: 18,color: Colors.black54,),
                            ),
                          ))

                    ],
                  )),
              UiSpacer.verticalSpace(),
              Container(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ",style: AppTextStyle.h4TitleTextStyle(color: Colors.grey[500]),textAlign: TextAlign.center,),
              )

            ]));
  }
}
