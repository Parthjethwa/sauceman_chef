import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saucemen/constants/app_color.dart';
import 'package:saucemen/constants/app_text_styles.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CuisineListItem extends StatefulWidget {
  final String type;
  const CuisineListItem({Key key,this.type}) : super(key: key);

  @override
  State<CuisineListItem> createState() => _CuisineListItemState();
}

class _CuisineListItemState extends State<CuisineListItem> {

  bool clicked=false;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 131,
        child: RaisedButton(
      padding: EdgeInsets.only(),
      elevation: 0,
      onPressed: () {
        setState(() {
          clicked=!clicked;
        });
      },
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        side: BorderSide(color: clicked?AppColor.secondaryColor: Colors.grey[300],width: 0.5)
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(padding: EdgeInsets.only(top: 10,bottom: 8),child:Image.asset("assets/images/cuisine.png",fit: BoxFit.cover,height: 86,width: 86,)),
              //SizedBox(height: 6),
              Text(widget.type,style: AppTextStyle.h4TitleTextStyle(color: clicked?Colors.black:Colors.grey),),
            ],
          ),
          clicked?Positioned(
            top: 5,
            right: 5,
              child: CircleAvatar(
                backgroundColor: Colors.black87,
                radius: 8,
                child: Icon(FlutterIcons.check_ant,size: 10,color: Colors.white),
              )):SizedBox.shrink()
        ],
      )
    ));
  }
}
