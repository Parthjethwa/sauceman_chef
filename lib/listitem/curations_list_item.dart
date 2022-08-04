import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saucemen/constants/app_color.dart';
import 'package:saucemen/constants/app_paddings.dart';
import 'package:saucemen/constants/app_sizes.dart';
import 'package:saucemen/constants/app_text_direction.dart';
import 'package:saucemen/constants/app_text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurationsListViewItem extends StatelessWidget {
  final String image;
  const CurationsListViewItem({
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
          child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
            image,
            fit: BoxFit.cover,
          ))),
    );
  }
}
