import 'package:flutter/material.dart';
import 'package:saucemen/constants/app_color.dart';
import 'package:saucemen/constants/app_text_styles.dart';

class TimeSlotListItem extends StatefulWidget {
  final String dateTime;
  final int index;
  final int preesedIndex;
  final Function onPressed;
  const TimeSlotListItem({Key key,this.dateTime,this.index,this.onPressed,this.preesedIndex}) : super(key: key);

  @override
  State<TimeSlotListItem> createState() => _TimeSlotListItemState();
}

class _TimeSlotListItemState extends State<TimeSlotListItem> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
        onTap: widget.onPressed,
        child:Container(
          alignment: Alignment.center,
            padding: EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: widget.preesedIndex==widget.index?AppColor.accentColor:Colors.white,
                border: Border.all(color: widget.preesedIndex==widget.index?AppColor.secondaryColor:Colors.grey[300],width: 0.5)
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(widget.dateTime,style: AppTextStyle.h4TitleTextStyle(color:  widget.preesedIndex==widget.index?Colors.black:Colors.grey[300],fontWeight: FontWeight.w600),textAlign: TextAlign.center),
              ],
            )
        ));
  }
}
