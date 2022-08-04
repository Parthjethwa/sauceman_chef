import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saucemen/constants/app_color.dart';
import 'package:saucemen/constants/app_paddings.dart';
import 'package:saucemen/constants/app_text_styles.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SelectMenuListItem extends StatefulWidget {
  const SelectMenuListItem({Key key,this.showBest=false,this.showChoice=false,this.menuItem,this.onAddItemPressed,this.onDeleteItemPressed,this.pressedIndex,this.index}) : super(key: key);

  final bool showBest;
  final bool showChoice;
  final String menuItem;
  final Function onAddItemPressed;
  final Function onDeleteItemPressed;
  final int pressedIndex;
  final int index;
  @override
  State<SelectMenuListItem> createState() => _SelectMenuListItemState();
}

class _SelectMenuListItemState extends State<SelectMenuListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10,bottom: 10),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/menu_item.png",width: 56,height: 56,fit: BoxFit.fill,),
            Expanded(child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Visibility(
                  visible: widget.showBest,
                  child: Container(
                  alignment: Alignment.topLeft,
                  width: double.infinity,
                  //margin: EdgeInsets.only(left: 0, top: 25, right: 30),
                  child: Container(
                  color: Color(0xFFFFF8EB),
                  padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                  margin: EdgeInsets.only(left: 20),
                  child:Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                       Icon(Icons.star, color: Color(0xFFEFC55C), size: 15,),
                       Text("BEST SELLER",
                          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xFFEFC55C)),
                      ),
                    ],
                  )),
                )),
                Visibility(
                  visible: widget.showChoice,
                  child: Container(
                  alignment: Alignment.topLeft,
                  width:  double.infinity,
                  //margin: EdgeInsets.only(left: 0, top: 25, right: 20),
                  child: Container(
                    color: Color(0xFFEEF6F5),
                    padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                    margin: EdgeInsets.only(left: 20),
                    child:Row(
                    children: [
                     Icon(Icons.star, color: Color(0xFF7ABCB3), size: 15,),
                     Text("CHEF'S CHOICE",
                          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xFF7ABCB3)),
                        ),

                    ],
                  )),
                )),
                Container(
                  margin: EdgeInsets.only(left: 20,top: 4),
                  alignment: Alignment.centerLeft,
                  child: Text(widget.menuItem??"",
                    style: AppTextStyle.h4TitleTextStyle(color: Colors.black,fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            )),
            Container(
              padding: widget.pressedIndex==widget.index?EdgeInsets.only(left: 24,right: 24,top: 6,bottom: 6):EdgeInsets.only(left: 12,right: 12,top: 6,bottom: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: widget.pressedIndex==widget.index?Colors.grey[300]:AppColor.secondaryColor,width: 0.5),
                  color: widget.pressedIndex==widget.index?Colors.white:AppColor.secondaryColor,
              ),
              child: widget.pressedIndex==widget.index?InkWell(onTap: widget.onDeleteItemPressed,child:Icon(FlutterIcons.delete_ant,size: 18,color: Colors.grey[300],))
              :InkWell(onTap: widget.onAddItemPressed,child:Text("+ Add",style: AppTextStyle.h4TitleTextStyle(color: Colors.black,fontWeight: FontWeight.w600),textAlign: TextAlign.center,)),
            )

          ],
      ),
    );
  }
}
