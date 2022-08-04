import 'dart:ui';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:sauceman_chef/Order%20history/complete%20occassion.dart';
import 'package:sauceman_chef/Order%20history/completed%20order.dart';
import 'package:sauceman_chef/Order%20history/ocassion.dart';

import 'cancelled order.dart';

class BookingHistory extends StatefulWidget {
  const BookingHistory({Key? key}) : super(key: key);

  @override
  State<BookingHistory> createState() => _BookingHistoryState();
}

class _BookingHistoryState extends State<BookingHistory> {
  final List<String> items = [
    'One Dish',
    'Occassion',
    'Other',
  ];
  String? selectedValue;
  final List<String> items1 = [
    'Weekly',
    'Monthly',
  ];
  String? selectedValue1;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leadingWidth: 28, // <-- Use this
            elevation: 0.5,
            //automaticallyImplyLeading: false,
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            title: Text("Booking History",
              style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
          ),body:  Column(
            children: [
              TabBar(
                indicatorColor: Colors.black,
                tabs: [
                  Tab(child: Text("Completed", style: TextStyle(fontSize:14, color: Colors.black,),),),
                  Tab(child: Text("Cancelled", style: TextStyle(fontSize:14, color: Colors.black,),),),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView(
                    shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children:[ Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15, left: 15),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton2(
                                      isExpanded: true,
                                      hint: Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:  [
                                          Padding(
                                              padding: EdgeInsets.only(left: 5),
                                              child: Image.asset("assets/another/img_1.png",
                                                height: 20,
                                              )
                                          ),
                                          Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.only(left: 10),
                                                child: Text(
                                                  'Filter',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                  ),
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              )
                                          ),
                                        ],
                                      ),
                                      items: items
                                          .map((item) =>
                                          DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 14,
                                              ),
                                            ),
                                          ))
                                          .toList(),
                                      value: selectedValue,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedValue = value as String;
                                        });
                                      },
                                      buttonHeight: 40,
                                      buttonWidth: 100,
                                      itemHeight: 40,
                                      buttonDecoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.black26,
                                        ),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15, left: 15),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton2(
                                      isExpanded: true,
                                      hint: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:  [
                                          Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.only(left: 10),
                                                child: Text(
                                                  'Today',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                  ),
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              )
                                          ),
                                        ],
                                      ),
                                      items: items1
                                          .map((item) =>
                                          DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 14,
                                              ),
                                            ),
                                          ))
                                          .toList(),
                                      value: selectedValue1,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedValue1 = value as String;
                                        });
                                      },
                                      buttonHeight: 40,
                                      buttonWidth: 85,
                                      itemHeight: 40,
                                      buttonDecoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.black26,
                                        ),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                         GestureDetector(
                           onTap: (){
                             Navigator.of(context).push(
                                 MaterialPageRoute(
                                     builder: (context) => Completed()));
                           },
                           child:  Column(
                             children: [
                               Padding(
                                 padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                                 child: Container(
                                   //height: MediaQuery.of(context).size.height/5.5,
                                   //width: MediaQuery.of(context).size.width/1,
                                   decoration: BoxDecoration(
                                       border: Border.all(
                                         color: Colors.grey,
                                           width: 0.5,
                                       ),
                                       borderRadius: BorderRadius.all(Radius.circular(10))
                                   ),
                                   child: Column(
                                     children: [
                                       Padding(
                                         padding: EdgeInsets.only(top: 10, left: 13),
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: [
                                             Text("Customer Name",
                                               style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold),
                                             ),
                                             Padding(
                                               padding: EdgeInsets.only(right: 10),
                                               child: Text("Today", style: TextStyle(fontSize:12,color: Colors.grey),),
                                             )
                                           ],
                                         ),
                                       ),
                                       Padding(
                                         padding: EdgeInsets.only(top: 10),
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: [
                                             Padding(
                                               padding: EdgeInsets.only(left: 13),
                                               child: Text("Neeladri Main Road",style: TextStyle(fontSize:12,color: Colors.grey)),
                                             ),
                                             Padding(
                                               padding: EdgeInsets.only(right: 10),
                                               child: Text("12:30 PM", style: TextStyle(color: Colors.black, fontSize: 12),),
                                             )
                                           ],
                                         ),
                                       ),

                                       Row(
                                         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Padding(
                                             padding: EdgeInsets.only(left: 10,top: 10),
                                             child: Image.asset("assets/images/img.png",
                                               height: MediaQuery.of(context).size.height/17,
                                               width: MediaQuery.of(context).size.width/5,
                                             ),
                                           ),
                                           Padding(
                                             padding: EdgeInsets.only(left: 10,top: 10),
                                             child: Image.asset("assets/another/img_2.png",
                                               height: 20,
                                             ),
                                           ),
                                         ],
                                       ),
                                       Padding(
                                         padding: EdgeInsets.only(left: 13, right: 13, top: 0),
                                         child: Divider(
                                           color: Colors.grey,
                                           thickness: 1,
                                         ),
                                       ),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Padding(
                                             padding: EdgeInsets.only(top: 5, left: 15, bottom: 5),
                                             child:  Text("Customer Bill Amount",
                                               style: TextStyle(fontSize: 12, color: Colors.black,),
                                             ),
                                           ),
                                           Padding(
                                             padding: EdgeInsets.only(top: 5, right: 15, bottom: 5),
                                             child:  Text("₹515",
                                               style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                                             ),
                                           )
                                         ],
                                       ),
                                       Padding(
                                         padding: EdgeInsets.only(left: 13, right: 13, top: 0),
                                         child: Divider(
                                           color: Colors.grey,
                                           thickness: 0.5,
                                         ),
                                       ),
                                       Container(
                                         alignment: Alignment.topLeft,
                                         child: Padding(
                                           padding: EdgeInsets.only(top: 10, left: 15, bottom: 15),
                                           child:  Text("Completed on time",
                                             style: TextStyle(fontSize: 12, color: Colors.green, fontWeight: FontWeight.bold),
                                           ),
                                         ),
                                       )
                                     ],
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => COccassion()));},
                  child:
                  Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                                child: Container(
                                  //height: MediaQuery.of(context).size.height/5.5,
                                  //width: MediaQuery.of(context).size.width/1,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 10, left: 13),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Customer Name",
                                              style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(right: 10),
                                              child: Text("Today", style: TextStyle(fontSize:12,color: Colors.grey),),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(left: 13),
                                              child: Text("Neeladri Main Road",style: TextStyle(fontSize:12,color: Colors.grey)),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(right: 10),
                                              child: Text("12:30 PM", style: TextStyle(color: Colors.black, fontSize: 12),),
                                            )
                                          ],
                                        ),
                                      ),

                                      Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 10,top: 10),
                                            child: Image.asset("assets/images/occassion.png",
                                              height: MediaQuery.of(context).size.height/17,
                                              width: MediaQuery.of(context).size.width/5,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 10,top: 10),
                                            child: Image.asset("assets/another/img_3.png",
                                              height: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 13, right: 13, top: 0),
                                        child: Divider(
                                          color: Colors.grey,
                                          thickness: 0.5,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 5, left: 15, bottom: 5),
                                            child:  Text("Customer Bill Amount",
                                              style: TextStyle(fontSize: 12, color: Colors.black,),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5, right: 15, bottom: 5),
                                            child:  Text("₹515",
                                              style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 13, right: 13, top: 0),
                                        child: Divider(
                                          color: Colors.grey,
                                          thickness: 0.5,
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 10, left: 15, bottom: 15),
                                          child:  Text("Completed on time",
                                            style: TextStyle(fontSize: 12, color: Colors.green, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Completed()));
                  },
                  child:
                  Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom:15),
                                child: Container(
                                  //height: MediaQuery.of(context).size.height/5.5,
                                  //width: MediaQuery.of(context).size.width/1,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 10, left: 13),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Customer Name",
                                              style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(right: 10),
                                              child: Text("Today", style: TextStyle(fontSize:12,color: Colors.grey),),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(left: 13),
                                              child: Text("Neeladri Main Road",style: TextStyle(fontSize:12,color: Colors.grey)),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(right: 10),
                                              child: Text("12:30 PM", style: TextStyle(color: Colors.black, fontSize: 12),),
                                            )
                                          ],
                                        ),
                                      ),

                                      Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 10,top: 10),
                                            child: Image.asset("assets/images/img.png",
                                              height: MediaQuery.of(context).size.height/17,
                                              width: MediaQuery.of(context).size.width/5,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 10,top: 10),
                                            child: Image.asset("assets/another/img_2.png",
                                              height: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 13, right: 13, top: 0),
                                        child: Divider(
                                          color: Colors.grey,
                                          thickness: 0.5,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 5, left: 15, bottom: 5),
                                            child:  Text("Customer Bill Amount",
                                              style: TextStyle(fontSize: 12, color: Colors.black,),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5, right: 15, bottom: 5),
                                            child:  Text("₹515",
                                              style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 13, right: 13, top: 0),
                                        child: Divider(
                                          color: Colors.grey,
                                          thickness: 1,
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 10, left: 15, bottom: 15),
                                          child:  Text("Completed on time",
                                            style: TextStyle(fontSize: 12, color: Colors.green, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                )
                        ],
                      ),
      ]
                    ),

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children:[ GestureDetector(
                        onTap:(){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => CancelledOrder()));
                        } ,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 15, left: 15),
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton2(
                                        isExpanded: true,
                                        hint: Row(
                                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children:  [
                                            Padding(
                                                padding: EdgeInsets.only(left: 5),
                                                child: Image.asset("assets/another/img_1.png",
                                                  height: 20,
                                                )
                                            ),
                                            Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    'Filter',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black,
                                                    ),
                                                    overflow: TextOverflow.ellipsis,
                                                  ),
                                                )
                                            ),
                                          ],
                                        ),
                                        items: items
                                            .map((item) =>
                                            DropdownMenuItem<String>(
                                              value: item,
                                              child: Text(
                                                item,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ))
                                            .toList(),
                                        value: selectedValue,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedValue = value as String;
                                          });
                                        },
                                        buttonHeight: 40,
                                        buttonWidth: 100,
                                        itemHeight: 40,
                                        buttonDecoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            color: Colors.black26,
                                          ),
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 15, left: 15),
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton2(
                                        isExpanded: true,
                                        hint: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children:  [
                                            Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.only(left: 10),
                                                  child: Text(
                                                    'Today',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black,
                                                    ),
                                                    overflow: TextOverflow.ellipsis,
                                                  ),
                                                )
                                            ),
                                          ],
                                        ),
                                        items: items1
                                            .map((item) =>
                                            DropdownMenuItem<String>(
                                              value: item,
                                              child: Text(
                                                item,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ))
                                            .toList(),
                                        value: selectedValue1,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedValue1 = value as String;
                                          });
                                        },
                                        buttonHeight: 40,
                                        buttonWidth: 85,
                                        itemHeight: 40,
                                        buttonDecoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            color: Colors.black26,
                                          ),
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                                  child: Container(
                                    //height: MediaQuery.of(context).size.height/5.5,
                                    //width: MediaQuery.of(context).size.width/1,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 0.5,
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 10, left: 13),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Customer Name",
                                                style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(right: 10),
                                                child: Text("Today", style: TextStyle(fontSize:12,color: Colors.grey),),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: 13),
                                                child: Text("Neeladri Main Road",style: TextStyle(fontSize:12,color: Colors.grey)),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(right: 10),
                                                child: Text("12:30 PM", style: TextStyle(color: Colors.black, fontSize: 12),),
                                              )
                                            ],
                                          ),
                                        ),

                                        Row(
                                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(left: 10,top: 10),
                                              child: Image.asset("assets/images/img.png",
                                                height: MediaQuery.of(context).size.height/17,
                                                width: MediaQuery.of(context).size.width/5,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 10,top: 10),
                                              child: Image.asset("assets/another/img_2.png",
                                                height: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 13, right: 13, top: 0),
                                          child: Divider(
                                            color: Colors.grey,
                                            thickness: 0.5,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 5, left: 15, bottom: 5),
                                              child:  Text("Customer Bill Amount",
                                                style: TextStyle(fontSize: 12, color: Colors.black,),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 5, right: 15, bottom: 5),
                                              child:  Text("₹515",
                                                style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 13, right: 13, top: 0),
                                          child: Divider(
                                            color: Colors.grey,
                                            thickness: 0.5,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 10, left: 15, bottom: 15),
                                            child:  Text("Cancelled by Customer",
                                              style: TextStyle(fontSize: 12, color: Colors.red, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                                  child: Container(
                                    //height: MediaQuery.of(context).size.height/5.5,
                                    //width: MediaQuery.of(context).size.width/1,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 0.5,
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 10, left: 13),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Customer Name",
                                                style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(right: 10),
                                                child: Text("Today", style: TextStyle(fontSize:12,color: Colors.grey),),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: 13),
                                                child: Text("Neeladri Main Road",style: TextStyle(fontSize:12,color: Colors.grey)),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(right: 10),
                                                child: Text("12:30 PM", style: TextStyle(color: Colors.black, fontSize: 12),),
                                              )
                                            ],
                                          ),
                                        ),

                                        Row(
                                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(left: 10,top: 10),
                                              child: Image.asset("assets/images/img.png",
                                                height: MediaQuery.of(context).size.height/17,
                                                width: MediaQuery.of(context).size.width/5,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 10,top: 10),
                                              child: Image.asset("assets/another/img_2.png",
                                                height: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 13, right: 13, top: 0),
                                          child: Divider(
                                            color: Colors.grey,
                                            thickness: 0.5,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 5, left: 15, bottom: 5),
                                              child:  Text("Customer Bill Amount",
                                                style: TextStyle(fontSize: 12, color: Colors.black,),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 5, right: 15, bottom: 5),
                                              child:  Text("₹515",
                                                style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 13, right: 13, top: 0),
                                          child: Divider(
                                            color: Colors.grey,
                                            thickness: 0.5,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 10, left: 15, bottom: 15),
                                            child:  Text("Cancelled by Customer",
                                              style: TextStyle(fontSize: 12, color: Colors.red, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 20, left: 15, right: 15,bottom:15),
                                  child: Container(
                                    //height: MediaQuery.of(context).size.height/5.5,
                                    //width: MediaQuery.of(context).size.width/1,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 0.5,
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 10, left: 13),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Customer Name",
                                                style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(right: 10),
                                                child: Text("Today", style: TextStyle(fontSize:12,color: Colors.grey),),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: 13),
                                                child: Text("Neeladri Main Road",style: TextStyle(fontSize:12,color: Colors.grey)),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(right: 10),
                                                child: Text("12:30 PM", style: TextStyle(color: Colors.black, fontSize: 12),),
                                              )
                                            ],
                                          ),
                                        ),

                                        Row(
                                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(left: 10,top: 10),
                                              child: Image.asset("assets/images/img.png",
                                                height: MediaQuery.of(context).size.height/17,
                                                width: MediaQuery.of(context).size.width/5,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 10,top: 10),
                                              child: Image.asset("assets/another/img_2.png",
                                                height: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 13, right: 13, top: 0),
                                          child: Divider(
                                            color: Colors.grey,
                                            thickness: 0.5,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 5, left: 15, bottom: 5),
                                              child:  Text("Customer Bill Amount",
                                                style: TextStyle(fontSize: 12, color: Colors.black,),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 5, right: 15, bottom: 5),
                                              child:  Text("₹515",
                                                style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 13, right: 13, top: 0),
                                          child: Divider(
                                            color: Colors.grey,
                                            thickness: 0.5,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 10, left: 15, bottom: 15),
                                            child:  Text("Cancelled by Customer",
                                              style: TextStyle(fontSize: 12, color: Colors.red, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
            ]
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
