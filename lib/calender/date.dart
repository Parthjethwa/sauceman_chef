import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'update.dart';


class DatePick extends StatefulWidget {
  const DatePick({Key? key}) : super(key: key);

  @override
  State<DatePick> createState() => _DatePickState();
}

class _DatePickState extends State<DatePick> {
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 28, // <-- Use this
        elevation: 0.5,
        //automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text("My Calender",
          style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Row(
            children: [
              Image.asset("assets/images/img_16.png",
              height: 20,
                color: Color(0xFFEFC55C),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15, left: 5),
                child: Text("Help",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
        backgroundColor: Colors.white,
      ),

      body:SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child:
      Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 25, left: 15, right: 15),
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
             // height: 100,
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey,
                      width: 0.5
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: SfDateRangePicker(
                //selectionColor: Color(0xFFEFC55C),
                //rangeSelectionColor: Color(0xFFEFC55C),
                showNavigationArrow: true,
               todayHighlightColor: Color(0xFFEFC55C),
                selectionTextStyle: TextStyle(color: Color(0xFFEFC55C)),
                onSelectionChanged: _onSelectionChanged,
                selectionMode: DateRangePickerSelectionMode.single,
                initialSelectedRange: PickerDateRange(
                    DateTime.now().subtract(const Duration(days: 4)),
                    DateTime.now().add(const Duration(days: 3))),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                    padding: EdgeInsets.only(left: 10, top: 25),
                    child:Container(
                      width: 155,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 0.5
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => UpdateWorking()));
                        },
                        child: Text("Set as Leave",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
              Padding(
                padding: EdgeInsets.only(right: 10, top: 25),
                child:Container(
                  width: 155,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => UpdateWorking()));
                    },
                    child: Text("Edit Time Slots",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 30, left: 15),
              child: Text("Recent Changes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
          child:Container(
            //padding: EdgeInsets.only(left: 15, right: 15),
            width: double.infinity,
            // height: 100,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey,
                    width: 0.5
                ),
                borderRadius: BorderRadius.all(Radius.circular(7))
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 0),
              child: IntrinsicHeight(
                 child:Row(
                   children: [
                     Container(
                       alignment: Alignment.topLeft,
                       child: Padding(
                         padding: EdgeInsets.only(top: 10, bottom: 0, left: 10, right: 15),
                         child: Text("3 January",
                           style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, ),
                         ),
                       ),
                     ),
                    Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      child:  VerticalDivider(
                        thickness: 1,
                      ),
                    ),
                     Column(
                       children: [
                         Padding(
                           padding: EdgeInsets.only(top: 15, right: 13),
                           child: Text("12:00-12:30 PM",
                             style: TextStyle(fontSize: 14, color: Colors.grey, ),
                           ),
                         ),
                         Padding(
                           padding: EdgeInsets.only(bottom: 15, left: 15, top:3),
                           child: Text("Time slot is disabled",
                             style: TextStyle(fontSize: 14, color: Colors.grey, ),
                           ),
                         )
                       ],
                     ),
                     Expanded(
                       child: Container(
                         alignment: Alignment.centerRight,
                         child: IconButton(
                             icon: Icon(Icons.arrow_forward_ios_outlined, size: 18, color: Colors.grey,),
                             onPressed: () { /*Navigator.of(context).push(
                           MaterialPageRoute(
                               builder: (context) => CookingMenu())); },
                            */
                             }),
                       ),
                     )
                   ],
                 )
              ),
            ),
          )
          ),
          Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child:Container(
                //padding: EdgeInsets.only(left: 15, right: 15),
                width: double.infinity,
                // height: 100,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey,
                        width: 0.5
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(7))
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: IntrinsicHeight(
                      child:Row(
                        children: [
                          Container(
                           // alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 8),
                              child: Text("21 January",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8, bottom: 8),
                            child:  VerticalDivider(
                              thickness: 1,
                            ),
                          ),
                              Padding(
                                padding: EdgeInsets.only(top: 0, right: 0, left: 17),
                                child: Text("Marked as Leave",
                                  style: TextStyle(fontSize: 14, color: Colors.grey, ),
                                ),
                              ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_outlined, size: 18, color: Colors.grey,),
                                  onPressed: () { /*Navigator.of(context).push(
                           MaterialPageRoute(
                               builder: (context) => CookingMenu())); },
                            */
                                  }),
                            ),
                          )
                        ],
                      )
                  ),
                ),
              )
          ),
          Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
              child:Container(
                //padding: EdgeInsets.only(left: 15, right: 15),
                width: double.infinity,
                // height: 100,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey,
                        width: 0.5
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(7))
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: IntrinsicHeight(
                      child:Row(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 0, left: 10, right: 10),
                              child: Text("10 January",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8, bottom: 8, ),
                            child:  VerticalDivider(
                              thickness: 1,
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15, right: 13),
                                child: Text("12:00-12:30 PM",
                                  style: TextStyle(fontSize: 14, color: Colors.grey, ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 3, right: 17),
                                child: Text("1:00-12:30 PM ",
                                  style: TextStyle(fontSize: 14, color: Colors.grey, ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 15, left: 17, top:3),
                                child: Text("Time slot is disabled",
                                  style: TextStyle(fontSize: 14, color: Colors.grey, ),
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_outlined, size: 18, color: Colors.grey,),
                                  onPressed: () { /*Navigator.of(context).push(
                           MaterialPageRoute(
                               builder: (context) => CookingMenu())); },
                            */
                                  }),
                            ),
                          )
                        ],
                      )
                  ),
                ),
              )
          ),

        ],
      ),
      )
    );
  }
}
