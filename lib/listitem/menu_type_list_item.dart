import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saucemen/constants/app_color.dart';
import 'package:saucemen/constants/app_paddings.dart';
import 'package:saucemen/constants/app_text_styles.dart';

class MenuTypeListItem extends StatefulWidget {
  const MenuTypeListItem({Key key,this.menuType,this.pressedIndex,this.index,this.onPreesed}) : super(key: key);

  final String menuType;
  final int pressedIndex;
  final int index;
  final Function onPreesed;

  @override
  State<MenuTypeListItem> createState() => _MenuTypeListItemState();
}

class _MenuTypeListItemState extends State<MenuTypeListItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.onPreesed,
        child:Container(
      padding: EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: widget.pressedIndex==widget.index?AppColor.accentColor:Colors.white,
          border: Border.all(color: widget.pressedIndex==widget.index?AppColor.secondaryColor:Colors.grey[300],width: 0.5)
      ),
      child: Text(widget.menuType??"",style: AppTextStyle.h4TitleTextStyle(),textAlign: TextAlign.center,),
    ));
  }
}
