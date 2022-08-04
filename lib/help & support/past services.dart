import 'package:flutter/material.dart';

class PastService extends StatefulWidget {
  const PastService({Key? key}) : super(key: key);

  @override
  State<PastService> createState() => _PastServiceState();
}

class _PastServiceState extends State<PastService> {
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
        title: Text("Help & Support",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15),
            alignment: Alignment.topLeft,
            child: Text("Past Services",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.black),
            ),
          ),
          GestureDetector(
            onTap:() {
             /* Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => EarningsPayout()));
              */
            },
            child: Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 5, left: 15, bottom: 5),
                                child: Text("Customer Bill Amount",
                                  style: TextStyle( fontSize: 12, color: Colors.grey),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20, top: 5, bottom: 5),
                              child: Text("₹515",
                                style: TextStyle( fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
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
                                      padding: EdgeInsets.only(top: 5, right: 40),
                                      child: Text("Booking Closed on",
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
          ),
          GestureDetector(
            onTap:() {
              /*Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => EarningsPayout()));
               */
            },
            child: Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15),
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
                                  child: Image.asset("assets/images/occassion.png",
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 5, left: 15, bottom: 5),
                                child: Text("Customer Bill Amount",
                                  style: TextStyle( fontSize: 12, color: Colors.grey),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20, top: 5, bottom: 5),
                              child: Text("₹515",
                                style: TextStyle( fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
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
                                      padding: EdgeInsets.only(top: 5, right: 40),
                                      child: Text("Booking Closed on",
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
          ),
        ],
      ),
    );
  }
}
