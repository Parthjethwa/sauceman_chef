import 'dart:ui';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;


class BarChartModel {
  String year;
  int financial;
  final charts.Color color;

  BarChartModel({
    required this.year,
    required this.financial,
    required this.color,
  });
}
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}

class TotalSale extends StatefulWidget {
  const TotalSale({Key? key}) : super(key: key);

  @override
  State<TotalSale> createState() => _TotalSaleState();
}

class _TotalSaleState extends State<TotalSale> {
  String? selectedValue;
  final List<String> items1 = [
    'Weekly',
    'Monthly',
  ];
  String? selectedValue1;


  final List<BarChartModel> data = [
    BarChartModel(
      year: "Mon",
      financial: 3,
      color: charts.ColorUtil.fromDartColor(Color(0xFFF3EBC8)),
    ),
    BarChartModel(
      year: "Tue",
      financial: 9,
      color: charts.ColorUtil.fromDartColor(Color(0xFFE6D589)),
    ),
    BarChartModel(
      year: "Wed",
      financial: 7,
      color: charts.ColorUtil.fromDartColor(Color(0xFFE4DAAB)),
    ),
    BarChartModel(
      year: "Thr",
      financial: 11,
      color: charts.ColorUtil.fromDartColor(Color(0xFF71AEA5)),
    ),
    BarChartModel(
      year: "Fri",
      financial: 9,
      color: charts.ColorUtil.fromDartColor(Color(0xFFE6D589)),
    ),
    BarChartModel(
      year: "Sat",
      financial: 1,
      color: charts.ColorUtil.fromDartColor(Color(0xFFF8F3DD)),
    ),
    BarChartModel(
      year: "Sun",
      financial: 5,
      color: charts.ColorUtil.fromDartColor(Color(0xFFEFE4B3)),
    ),
  ];


  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (BarChartModel series, _) => series.year,
        measureFn: (BarChartModel series, _) => series.financial,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];

    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              leadingWidth: 28,
              // <-- Use this
              elevation: 0.5,
              iconTheme: IconThemeData(
                color: Colors.black, //change your color here
              ),
              title: Text("Total Sales",
                style: TextStyle(fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    // do something
                  },
                )
              ],
              backgroundColor: Colors.white,
            ),
            body: (
                Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 0),
                        child: TabBar(
                          indicatorColor: Colors.black,
                          //automaticIndicatorColorAdjustment: true,
                          unselectedLabelColor: Colors.grey,
                          labelColor: Colors.black,
                          tabs: [
                            Tab(child: Text("Delivered Jobs", style: TextStyle(
                              fontSize: 14,fontWeight: FontWeight.bold),),),
                            Tab(child: Text("Revenue", style: TextStyle(
                              fontSize: 14,fontWeight: FontWeight.bold),),),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child:
                                Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 15, left: 15),
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton2(
                                              isExpanded: true,
                                              hint: Row(
                                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Expanded(
                                                      child: Padding(
                                                        padding: EdgeInsets
                                                            .only(left: 10),
                                                        child: Text(
                                                          'Weekly',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            color: Colors.black,
                                                          ),
                                                          overflow: TextOverflow
                                                              .ellipsis,
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
                                              value: selectedValue,
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedValue =
                                                  value as String;
                                                });
                                              },
                                              buttonHeight: 35,
                                              buttonWidth: 100,
                                              itemHeight: 40,
                                              buttonDecoration: BoxDecoration(
                                                borderRadius: BorderRadius
                                                    .circular(7),
                                                border: Border.all(
                                                  color: Color(0xFFD6D6D6),
                                                ),
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.only(left: 15,
                                              right: 15,
                                              top: 15,
                                              bottom: 15),
                                          margin: EdgeInsets.only(
                                              left: 15, right: 15),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 0.5,
                                              ),
                                              color: Colors.grey[100],
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10))
                                          ),
                                          child: Text("Jobs", style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF4A4A4A)),),
                                        ),
                                      ),
                                      Container(
                                        height: 280,
                                        //width: 300,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 0.5,
                                            ),
                                            borderRadius: BorderRadius.only(
                                                bottomRight: Radius.circular(
                                                    10),
                                                bottomLeft: Radius.circular(10))
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        margin: EdgeInsets.only(
                                            left: 15, right: 15),
                                        child: charts.BarChart(
                                          series,
                                          animate: true,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.only(left: 15,
                                              right: 15,
                                              top: 15,
                                              bottom: 15),
                                          margin: EdgeInsets.only(
                                              left: 15, right: 15),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 0.5,
                                              ),
                                              color: Colors.grey[100],
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10))
                                          ),
                                          child: Text("Jobs by service type",
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF4A4A4A)),),
                                        ),
                                      ),

                                      Container(
                                          height: 260,
                                          //width: 300,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 0.5,
                                              ),
                                              borderRadius: BorderRadius.only(
                                                  bottomRight: Radius.circular(
                                                      10),
                                                  bottomLeft: Radius.circular(
                                                      10))
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          margin: EdgeInsets.only(
                                              left: 15, right: 15),
                                          child: Stack(
                                            children: [
                                              charts.PieChart(
                                                series,
                                                animate: true,
                                                animationDuration: Duration(
                                                    milliseconds: 500),
                                                defaultRenderer: new charts.ArcRendererConfig(arcWidth: 30),
                                              ),
                                              Center(
                                                child: Text(
                                                  "100",
                                                  style: TextStyle(
                                                      fontSize: 20.0,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .bold
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                    alignment: Alignment.bottomLeft,
                                                    child: Row(
                                                      children: [
                                                        Image.asset("assets/notify/img_9.png",height: 15,),
                                                        Text("  Occasions", style: TextStyle(fontSize: 14, color: Colors.grey),),
                                                        Text("  16", style: TextStyle(fontSize: 14, color: Colors.black),)
                                                      ],
                                                    )
                                                  ),
                                                  Container(
                                                      alignment: Alignment.bottomRight,
                                                      child: Row(
                                                        children: [
                                                          Image.asset("assets/notify/img_10.png",height: 15,),
                                                          Text("  Ouick", style: TextStyle(fontSize: 14, color: Colors.grey),),
                                                          Text("  84", style: TextStyle(fontSize: 14, color: Colors.black),)
                                                        ],
                                                      )
                                                  )
                                                ],
                                              )
                                            ],
                                          )
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.only(left: 15,
                                              right: 15,
                                              top: 15,
                                              bottom: 15),
                                          margin: EdgeInsets.only(
                                              left: 15, right: 15),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 0.5,
                                              ),
                                              color: Colors.grey[100],
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10))
                                          ),
                                          child: Text("Time slot distribution of your jobs",
                                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color:Color(0xFF4A4A4A)),),
                                        ),
                                      ),
                                      Container(
                                          height: 300,
                                          //width: 300,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 0.5,
                                              ),
                                              borderRadius: BorderRadius.only(
                                                  bottomRight: Radius.circular(
                                                      10),
                                                  bottomLeft: Radius.circular(
                                                      10))
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          margin: EdgeInsets.only(
                                              left: 15, right: 15, bottom: 15),
                                          child: Stack(
                                            children: [
                                              Container(
                                                height: 230,
                                                child: charts.PieChart(
                                                  series,
                                                  animate: true,
                                                  animationDuration: Duration(
                                                      milliseconds: 500),
                                                  defaultRenderer: new charts.ArcRendererConfig(arcWidth: 30),

                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(bottom: 40),
                                                child: Center(
                                                  child: Text(
                                                    "100",
                                                    style: TextStyle(
                                                        fontSize: 20.0,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight
                                                            .bold
                                                    ),
                                                  ),
                                                ),
                                              ),

                                                 Column(
                                                   crossAxisAlignment: CrossAxisAlignment.end,
                                                   mainAxisAlignment: MainAxisAlignment.end,
                                                   children: [
                                                     Row(
                                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                       children: [
                                                         Container(
                                                             alignment: Alignment.bottomRight,
                                                             child: Row(
                                                               children: [
                                                                 Image.asset("assets/notify/img_9.png",height: 15,),
                                                                 Text("  Breakfast", style: TextStyle(fontSize: 14, color: Colors.grey),),
                                                                 Text("  16", style: TextStyle(fontSize: 14, color: Colors.black),)
                                                               ],
                                                             )
                                                         ),
                                                         Container(
                                                             alignment: Alignment.bottomRight,
                                                             child: Row(
                                                               children: [
                                                                 Icon(Icons.access_time, color: Colors.grey, size: 15,),
                                                                 Text(" 7AM - 9AM", style: TextStyle(fontSize: 12, color: Colors.grey),)
                                                               ],
                                                             )
                                                         )
                                                       ],
                                                     ),
                                                     Padding(
                                                       padding: EdgeInsets.only(top: 10),
                                                       child: Row(
                                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                         children: [
                                                           Container(
                                                               alignment: Alignment.bottomRight,
                                                               child: Row(
                                                                 children: [
                                                                   Image.asset("assets/notify/img_11.png",height: 15,),
                                                                   Text("  Lunch", style: TextStyle(fontSize: 14, color: Colors.grey),),
                                                                   Text("  84", style: TextStyle(fontSize: 14, color: Colors.black),)
                                                                 ],
                                                               )
                                                           ),
                                                           Container(
                                                               alignment: Alignment.bottomRight,
                                                               child: Row(
                                                                 children: [
                                                                   Icon(Icons.access_time, color: Colors.grey, size: 15,),
                                                                   Text(" 1AM - 3PM", style: TextStyle(fontSize: 12, color: Colors.grey),),
                                                                 ],
                                                               )
                                                           )
                                                         ],
                                                       ),
                                                     ),
                                                     Padding(
                                                       padding: EdgeInsets.only(top: 10),
                                                       child: Row(
                                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                         children: [
                                                           Container(
                                                               alignment: Alignment.bottomRight,
                                                               child: Row(
                                                                 children: [
                                                                   Image.asset("assets/notify/img_10.png",height: 15,),
                                                                   Text("  Dinner", style: TextStyle(fontSize: 14, color: Colors.grey),),
                                                                   Text("  84", style: TextStyle(fontSize: 14, color: Colors.black),)
                                                                 ],
                                                               )
                                                           ),
                                                           Container(
                                                               alignment: Alignment.bottomRight,
                                                               child: Row(
                                                                 children: [
                                                                   Icon(Icons.access_time, color: Colors.grey, size: 15,),
                                                                   Text(" 7AM - 9AM", style: TextStyle(fontSize: 12, color: Colors.grey),),
                                                                 ],
                                                               )
                                                           )
                                                         ],
                                                       ),
                                                     )
                                                   ],
                                                 )
                                            ],
                                          )
                                      ),
                                    ]
                                )
                            ),


                            SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 15, left: 15),
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton2(
                                              isExpanded: true,
                                              hint: Row(
                                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Expanded(
                                                      child: Padding(
                                                        padding: EdgeInsets
                                                            .only(left: 10),
                                                        child: Text(
                                                          'Weekly',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            color: Colors.black,
                                                          ),
                                                          overflow: TextOverflow
                                                              .ellipsis,
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
                                              value: selectedValue,
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedValue =
                                                  value as String;
                                                });
                                              },
                                              buttonHeight: 35,
                                              buttonWidth: 100,
                                              itemHeight: 40,
                                              buttonDecoration: BoxDecoration(
                                                borderRadius: BorderRadius
                                                    .circular(7),
                                                border: Border.all(
                                                  color: Color(0xFFD6D6D6),
                                                ),
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.only(left: 15,
                                              right: 15,
                                              top: 15,
                                              bottom: 15),
                                          margin: EdgeInsets.only(
                                              left: 15, right: 15),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 0.5,
                                              ),
                                              color: Colors.grey[100],
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10))
                                          ),
                                          child: Text("Revenue", style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF4A4A4A)),),
                                        ),
                                      ),
                                      Container(
                                        height: 280,
                                        //width: 300,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 0.5,
                                            ),
                                            borderRadius: BorderRadius.only(
                                                bottomRight: Radius.circular(
                                                    10),
                                                bottomLeft: Radius.circular(10))
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        margin: EdgeInsets.only(
                                            left: 15, right: 15),
                                        child: charts.BarChart(
                                          series,
                                          animate: true,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.only(left: 15,
                                              right: 15,
                                              top: 15,
                                              bottom: 15),
                                          margin: EdgeInsets.only(
                                              left: 15, right: 15),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 0.5,
                                              ),
                                              color: Colors.grey[100],
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10))
                                          ),
                                          child: Text("Revenue by service type",
                                            style: TextStyle(fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF4A4A4A)),),
                                        ),
                                      ),

                                      Container(
                                          height: 260,
                                          //width: 300,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 0.5,
                                              ),
                                              borderRadius: BorderRadius.only(
                                                  bottomRight: Radius.circular(
                                                      10),
                                                  bottomLeft: Radius.circular(
                                                      10))
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          margin: EdgeInsets.only(
                                              left: 15, right: 15),
                                          child: Stack(
                                            children: [
                                              charts.PieChart(
                                                series,
                                                animate: true,
                                                animationDuration: Duration(
                                                    milliseconds: 500),
                                                defaultRenderer: new charts.ArcRendererConfig(arcWidth: 30),
                                              ),
                                              Center(
                                                child: Text(
                                                  "₹100",
                                                  style: TextStyle(
                                                      fontSize: 20.0,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .bold
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                      alignment: Alignment.bottomLeft,
                                                      child: Row(
                                                        children: [
                                                          Image.asset("assets/notify/img_9.png",height: 15,),
                                                          Text("  Occasions", style: TextStyle(fontSize: 14, color: Colors.grey),),
                                                          Text(" ₹6k", style: TextStyle(fontSize: 14, color: Colors.black),)
                                                        ],
                                                      )
                                                  ),
                                                  Container(
                                                      alignment: Alignment.bottomRight,
                                                      child: Row(
                                                        children: [
                                                          Image.asset("assets/notify/img_10.png",height: 15,),
                                                          Text("  Ouick", style: TextStyle(fontSize: 14, color: Colors.grey),),
                                                          Text(" ₹18k", style: TextStyle(fontSize: 14, color: Colors.black),)
                                                        ],
                                                      )
                                                  )
                                                ],
                                              )
                                            ],
                                          )
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.only(left: 15,
                                              right: 15,
                                              top: 15,
                                              bottom: 15),
                                          margin: EdgeInsets.only(
                                              left: 15, right: 15),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 0.5,
                                              ),
                                              color: Colors.grey[100],
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10))
                                          ),
                                          child: Text("Time slot distribution of your revenue",
                                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF4A4A4A)),),
                                        ),
                                      ),
                                      Container(
                                          height: 300,
                                          //width: 300,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 0.5,
                                              ),
                                              borderRadius: BorderRadius.only(
                                                  bottomRight: Radius.circular(
                                                      10),
                                                  bottomLeft: Radius.circular(
                                                      10))
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10,),
                                          margin: EdgeInsets.only(
                                              left: 15, right: 15, bottom: 15),
                                          child: Stack(
                                            children: [
                                              Container(
                                                height: 220,
                                                child: charts.PieChart(
                                                  series,
                                                  animate: true,
                                                  animationDuration: Duration(
                                                      milliseconds: 500),
                                                  defaultRenderer: new charts.ArcRendererConfig(arcWidth: 30),

                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(bottom: 40),
                                                child: Center(
                                                  child: Text(
                                                    "₹100",
                                                    style: TextStyle(
                                                        fontSize: 20.0,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight
                                                            .bold
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Container(
                                                          alignment: Alignment.bottomRight,
                                                          child: Row(
                                                            children: [
                                                              Image.asset("assets/notify/img_9.png",height: 15,),
                                                              Text("  Breakfast", style: TextStyle(fontSize: 14, color: Colors.grey),),
                                                              Text(" ₹8K", style: TextStyle(fontSize: 14, color: Colors.black),)
                                                            ],
                                                          )
                                                      ),
                                                      Container(
                                                          alignment: Alignment.bottomRight,
                                                          child: Row(
                                                            children: [
                                                              Icon(Icons.access_time, color: Colors.grey, size: 15,),
                                                              Text(" 7AM - 9AM", style: TextStyle(fontSize: 12, color: Colors.grey),)
                                                            ],
                                                          )
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Container(
                                                            alignment: Alignment.bottomRight,
                                                            child: Row(
                                                              children: [
                                                                Image.asset("assets/notify/img_11.png",height: 15,),
                                                                Text("  Lunch", style: TextStyle(fontSize: 14, color: Colors.grey),),
                                                                Text(" ₹14k", style: TextStyle(fontSize: 14, color: Colors.black),)
                                                              ],
                                                            )
                                                        ),
                                                        Container(
                                                            alignment: Alignment.bottomRight,
                                                            child: Row(
                                                              children: [
                                                                Icon(Icons.access_time, color: Colors.grey, size: 15,),
                                                                Text(" 1AM - 3PM", style: TextStyle(fontSize: 12, color: Colors.grey),),
                                                              ],
                                                            )
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Container(
                                                            alignment: Alignment.bottomRight,
                                                            child: Row(
                                                              children: [
                                                                Image.asset("assets/notify/img_10.png",height: 15,),
                                                                Text("  Dinner", style: TextStyle(fontSize: 14, color: Colors.grey),),
                                                                Text(" ₹840", style: TextStyle(fontSize: 14, color: Colors.black),)
                                                              ],
                                                            )
                                                        ),
                                                        Container(
                                                            alignment: Alignment.bottomRight,
                                                            child: Row(
                                                              children: [
                                                                Icon(Icons.access_time, color: Colors.grey, size: 15,),
                                                                Text(" 7AM - 9AM", style: TextStyle(fontSize: 12, color: Colors.grey),),
                                                              ],
                                                            )
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          )
                                      ),
                                    ]
                                )
                            )
                          ],
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}