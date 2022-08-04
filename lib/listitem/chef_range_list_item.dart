import 'package:flutter/material.dart';
import 'package:saucemen/constants/app_color.dart';
import 'package:saucemen/constants/app_text_styles.dart';

class ChefRangeListItem extends StatefulWidget {
  final String image;
  final String price;
  final String title;
  final int seletedIndex;
  final int index;
  final Function onPressed;
  const ChefRangeListItem({Key key, this.image, this.price,this.index, this.title,this.seletedIndex,this.onPressed})
      : super(key: key);

  @override
  State<ChefRangeListItem> createState() => _ChefRangeListItemState();
}

class _ChefRangeListItemState extends State<ChefRangeListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 16),
        child: RaisedButton(
       padding: EdgeInsets.only(left: 14,right: 14,top: 14,bottom: 14),
       elevation: 0,
       onPressed: widget.onPressed,
       color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side: BorderSide(
              color: widget.seletedIndex== widget.index? AppColor.secondaryColor : Colors.grey[300],
              width: 0.5)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child:Image.asset(
            widget.image,
            width: 88,
            height: 96,
            fit: BoxFit.cover,
          ))),
          SizedBox(width: 16),
          Expanded(
            flex: 8,
              child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    widget.title,
                    style: AppTextStyle.h3TitleTextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  Expanded(child: Align(
                    alignment: Alignment.centerRight,
                    child: widget.seletedIndex== widget.index?
                     CircleAvatar(
                       backgroundColor: Colors.black87,
                       radius: 10,
                       child: Icon(Icons.check,color: Colors.white,size: 10),
                     ):Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.grey[300],width: 0.5)
                      ),
                    )
                  ))
                ],
              ),
              SizedBox(height: 4),
              Container(
                color: Color(0xFFFAE8BB),
                padding: EdgeInsets.only(left: 6,right: 6,top: 3,bottom: 3),
                child: RichText(
                    text: TextSpan(
                        text: "Starting at ".toUpperCase(),
                        style: AppTextStyle.h4TitleTextStyle(
                            color: Colors.black87, fontWeight: FontWeight.w400),
                        children: [
                      TextSpan(
                        text: ("\u{20B9} "+widget.price),
                        style: AppTextStyle.h4TitleTextStyle(
                            color: Colors.black87, fontWeight: FontWeight.w700),
                      )
                    ])),
              ),
              SizedBox(height: 6),
              Text("3 Star Restaurant chef’s\nwith 3+ years of experience",style: AppTextStyle.h6TitleTextStyle(color: AppColor.hintTextColor(context)),)

            ],
          ))
        ],
      ),
    ));
  }
}
