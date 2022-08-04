import 'package:flutter/material.dart';
import 'package:saucemen/constants/app_color.dart';
import 'package:saucemen/constants/app_paddings.dart';
import 'package:saucemen/constants/app_sizes.dart';
import 'package:saucemen/constants/app_text_styles.dart';
import 'package:intl/intl.dart';

class DateListItem extends StatefulWidget {
  final DateTime dateTime;
  final int index;
  final int preesedIndex;
  final Function onPressed;
  const DateListItem({Key key,this.dateTime,this.index,this.preesedIndex,this.onPressed}) : super(key: key);

  @override
  State<DateListItem> createState() => _DateListItemState();

}

class _DateListItemState extends State<DateListItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.onPressed,
        child:Container(
          padding: EdgeInsets.only(left: 16,right: 16,top: 4,bottom: 4),
          width: 110,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: widget.preesedIndex==widget.index?AppColor.accentColor:Colors.white,
              border: Border.all(color: widget.preesedIndex==widget.index?AppColor.secondaryColor:Colors.grey[300],width: 0.5)
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(widget.index==0?"Today":(widget.index==1?"Tomorrow":DateFormat("EEEE").format(widget.dateTime)),style: AppTextStyle.h5TitleTextStyle(color:  widget.preesedIndex==widget.index?Colors.black:Colors.grey[300],fontWeight: FontWeight.w500),textAlign: TextAlign.center),
              Text(DateFormat("dd MMM").format(widget.dateTime),style: AppTextStyle.h4TitleTextStyle(color:  widget.preesedIndex==widget.index?Colors.black:Colors.grey[300],fontWeight: FontWeight.w600),textAlign: TextAlign.center),
            ],
          )
        ));
  }
}
