import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saucemen/constants/app_color.dart';
import 'package:saucemen/constants/app_paddings.dart';
import 'package:saucemen/constants/app_sizes.dart';
import 'package:saucemen/constants/app_text_direction.dart';
import 'package:saucemen/constants/app_text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularBrandsListViewItem extends StatelessWidget {
  final String image;
  const PopularBrandsListViewItem({
    this.image,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (AppSizes.getScreenWidth(context) / 3) - 25,
      child: InkWell(
          onTap: () {},
          highlightColor: Colors.transparent,
          splashColor: AppColor.accentColor.withOpacity(0.5),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  padding: AppPaddings.defaultPadding(),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFFC5C5C5),width: 1)
                   ),

                  child: Image.asset(
                         image,
                        //width: 42,
                      )),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 6),
                  child: Text(
                    "Cubbie Hawk BBQ",
                    style: AppTextStyle.h5TitleTextStyle(
                        color: AppColor.textColor(context),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                    //overflow: TextOverflow.ellipsis,
                    //maxLines: 2,
                    textDirection: AppTextDirection.defaultDirection,
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 6),
                  child: Text(
                    "36 mins",
                    style: AppTextStyle.h7TitleTextStyle(
                        color: AppColor.textColor(context),
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                    //overflow: TextOverflow.ellipsis,
                    //maxLines: 2,
                    textDirection: AppTextDirection.defaultDirection,
                  )),
            ],
          )
    ));
  }
}
