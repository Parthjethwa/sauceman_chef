import 'package:flutter/material.dart';
import 'package:sauceman_chef/earnings%20&%20payouts/earnings n payout.dart';

class CancelledOrder extends StatefulWidget {
  const CancelledOrder({Key? key}) : super(key: key);

  @override
  State<CancelledOrder> createState() => _CancelledOrderState();
}

class _CancelledOrderState extends State<CancelledOrder> {
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
          actions: [
            Expanded(
              child: Container(
                //alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 8, top: 15),
                                    child: Text("Customer Name",
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xff4a4a4a)),
                                    ),
                                  ),
                                ),
                              ]
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50, bottom: 8),
                          child: IntrinsicHeight(
                              child:Row(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("One Dish",
                                    style: TextStyle(fontSize: 10, color: Color(0xff4a4a4a)),
                                  ),
                                  VerticalDivider(color: Colors.black,),
                                  Text("12:30 PM",
                                    style: TextStyle(fontSize: 10, color: Color(0xff4a4a4a),)
                                  ),
                                  VerticalDivider(color: Colors.black,),
                                  Text("21 Jan",
                                    style: TextStyle(fontSize: 10, color: Color(0xff4a4a4a)),
                                  ),
                                ],
                              )
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
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
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                  child:Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child:Column(
                      children: [
                        Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15, left: 15),
                                child: Container(
                                  //height: 30,
                                  //width: 100,
                                  color: Color(0xFFF8E9E8),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 5, left: 5, bottom: 5),
                                        child: Icon(Icons.cancel_outlined, color: Colors.red, size: 15,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 5, left: 4, bottom: 5, right: 7),
                                        child: Text("Cancelled",
                                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.red),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 12.5, left: 10),
                                child: Text("By Customer",
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                                ),
                              ),
                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Divider(thickness: 0.5, color: Colors.grey,),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15, top: 5),
                              child: Text("Cancellation Reason",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child:  Padding(
                            padding: EdgeInsets.only(top: 10, left: 15),
                            child: Text("Lorem ipsum dolor sit amet, consectetu adipiscing",
                              style: TextStyle( fontSize: 12, color: Colors.grey),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child:  Padding(
                            padding: EdgeInsets.only(top: 3, left: 15, bottom: 15),
                            child: Text("elit. Nunc risus, orci id aliquet faucibs nullam ipsum.",
                              style: TextStyle( fontSize: 12, color: Colors.grey),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              ),
              Container(
                alignment: Alignment.topLeft,
                child:  Padding(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  child: Text("Order Details",
                    style: TextStyle(fontSize: 16, color: Colors.grey,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                child:
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 10, top: 4, bottom: 0),
                                child: GestureDetector(
                                  onTap: () {
                                    /*Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => CookingMenu()));

                                     */
                                  },
                                  child: Text("View Cooking Menu",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.grey),
                                  ),
                                )
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_outlined, size: 15, color: Colors.black,),
                                onPressed: (){},
    ),
                            )
                          ],
                        ),
                        Divider(thickness: 0.5, color: Colors.grey,
                            height: 1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 15),
                              child:  Text("Booking Amount",
                                style: TextStyle(fontSize: 12, color: Colors.grey, ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, right: 15),
                              child:  Text("₹494",
                                style: TextStyle(fontSize: 12, color: Colors.black,fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 15),
                              child:  Text("Taxes & Charges",
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, right: 15),
                              child:  Text("₹50",
                                style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Divider(color: Colors.grey, thickness: 0.5,),
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5, left: 15, bottom: 15),
                              child:  Text("Total Amount",
                                style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                child:  Padding(
                                  padding: EdgeInsets.only(top: 5, right: 15, bottom: 15),
                                  child:  Text("₹515",
                                    style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                ),
              ),
              GestureDetector(
                onTap:() {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => EarningsPayout()));
                },
                child: Padding(
                    padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10, left: 15),
                                  child: Text("Customer Name",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child:  Padding(
                                      padding: EdgeInsets.only(top: 15, right: 15),
                                      child: Image.asset("assets/images/img.png",
                                        height: 20,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 0, left: 15),
                                child: Text("Neeladri Main Road",
                                  style: TextStyle( fontSize: 12, color: Colors.grey),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Divider(color: Colors.grey, thickness: 0.5,),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 5, left: 15, right: 15),
                                child:Container(
                                  child:  Image.asset("assets/notify/img_7.png"),
                                )
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Divider(color: Colors.grey, thickness: 0.5,),
                            ),
                            IntrinsicHeight(
                                child:Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 5,left: 15),
                                          child: Text("Booking on",
                                            style: TextStyle( fontSize: 12, color: Colors.grey),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 5, right: 25),
                                          child: Text("Booking Cancelled on",
                                            style: TextStyle( fontSize: 12, color: Colors.grey),
                                          ),
                                        )
                                      ],
                                    ),
                                    VerticalDivider(),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 5,left: 15, bottom: 15),
                                          child: Text("02 Feb 2021, 12:37 PM",
                                            style: TextStyle( fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 5, right:15, bottom: 15),
                                          child: Text("02 Feb 2021, 12:37 PM",
                                            style: TextStyle( fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                            )
                          ]
                      ),
                    )
                ),
              )
            ],
          ),
        )
    );
  }
}
