import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saucemen/constants/app_color.dart';
import 'package:saucemen/constants/app_paddings.dart';
import 'package:saucemen/constants/app_sizes.dart';
import 'package:saucemen/constants/app_text_direction.dart';
import 'package:saucemen/constants/app_text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OccasionsListViewItem extends StatelessWidget {
  final String image;
  final String title;
  const OccasionsListViewItem({
    this.image,
    this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  (AppSizes.getScreenWidth(context) / 3) - 20,
      child:InkWell(
      onTap: () {},
      highlightColor: Colors.transparent,
      splashColor: AppColor.accentColor.withOpacity(0.5),
      child: Column(
            children: [
              CircleAvatar(
                  backgroundColor: AppColor.accentColor,
                  radius: (AppSizes.getScreenWidth(context) / 3) - 85,

                  child: Padding(padding:AppPaddings.buttonPadding(),
                  child:SvgPicture.asset(
                    image,
                     width: 42,
                  ))),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 6),
                  child: Text(
                    title,
                    style: AppTextStyle.h5TitleTextStyle(
                        color: AppColor.textColor(context),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                    //overflow: TextOverflow.ellipsis,
                    //maxLines: 2,
                    textDirection: AppTextDirection.defaultDirection,
                  )),
            ],
          )),
    );
  }
}
