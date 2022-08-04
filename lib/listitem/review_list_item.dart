import 'package:flutter/material.dart';
import 'package:saucemen/constants/app_text_direction.dart';
import 'package:saucemen/constants/app_text_styles.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:saucemen/utils/ui_spacer.dart';

class ReviewListItem extends StatefulWidget {
  const ReviewListItem({Key key}) : super(key: key);

  @override
  State<ReviewListItem> createState() => _ReviewListItemState();
}

class _ReviewListItemState extends State<ReviewListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/review.png",width: 42,height: 42,),
                SizedBox(width: 10),
                RichText(text: TextSpan(
                  text: "Aparna Priydarshini",
                  style: AppTextStyle.h4TitleTextStyle(color: Colors.black,fontWeight: FontWeight.w600),
                  children: [
                    TextSpan(
                      text: "\nDec 15, 2021",
                      style: AppTextStyle.h5TitleTextStyle(color: Colors.black26),
                    )
                  ]
                )),
                Expanded(child:Container(
                  alignment: Alignment.centerRight,
                  child: Container(
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
                      )),
                ))
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 52),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pulvinar tempor at auctor proin sed ut tellus velit, volutpat.",
                style: AppTextStyle.h4TitleTextStyle(color: Colors.black26),),
            ),
            UiSpacer.verticalSpace(),
            UiSpacer.divider(color: Colors.grey[300],thickness: 0.5),
            UiSpacer.verticalSpace(),

          ],
        ),
    );
  }
}
