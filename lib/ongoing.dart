import 'package:flutter/material.dart';
import 'package:sauceman_chef/code.dart';
import 'package:sauceman_chef/profile.dart';
import 'package:slider_button/slider_button.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:sauceman_chef/earnings%20&%20payouts/earnings.dart';
import 'package:sauceman_chef/earnings%20&%20payouts/payouts.dart';
class OnGoing extends StatefulWidget {
  const OnGoing({Key? key}) : super(key: key);

  @override
  State<OnGoing> createState() => _OnGoingState();
}

class _OnGoingState extends State<OnGoing> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Container(
                //height: MediaQuery.of(context).size.height/9,
                //width: MediaQuery.of(context).size.width/1,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 0, left: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Customer Name",
                            style: TextStyle( fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text("Today", style: TextStyle(color: Colors.grey, fontSize: 12),),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5,),
                          child: Image.asset("assets/images/img.png",
                            height: MediaQuery.of(context).size.height/18,
                            width: MediaQuery.of(context).size.width/6,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.bottomRight,
                            child:  Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text("12:30 PM", style: TextStyle(color: Colors.grey, fontSize: 12),),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child:Container(
                  child:  Image.asset("assets/images/img_15.png"),
                )
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 15, right: 15),
              child: Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Text("Cooking Menu",
                  style: TextStyle(fontSize: 16, color: Colors.grey,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(top: 15,left: 15),
                  child: Image.asset("assets/images/vegspringroll.png",
                    width: MediaQuery.of(context).size.width/3,
                  )
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(top: 10,left: 15 ),
                  child: Image.asset("assets/images/drymanchurian.png",
                    width: MediaQuery.of(context).size.width/3,
                  )
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child:Padding(
                  padding: EdgeInsets.only(top: 10, right: 0,left: 15),
                  child: Image.asset("assets/images/drymanchurian.png",
                    width: MediaQuery.of(context).size.width/3,
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 15, right: 15),
              child: Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child:  Padding(
                          padding: EdgeInsets.only(top: 30, left: 15),
                          child: Text("Ingredients List",
                            style: TextStyle(fontSize: 16, color: Colors.grey,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 0, left: 15),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 0, right: 5),
                                  child:  Container(
                                    child: RoundCheckBox(
                                      onTap: (selected) {},
                                      checkedWidget: Icon(Icons.check, size: 15,color: Colors.white,),
                                      checkedColor: Colors.black,
                                      size: 20,

                                    ),
                                  ),
                                ),
                                Image.asset("assets/images/maggiee.png",
                                  width: MediaQuery.of(context).size.width/9,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text("3 Packs",
                                      style: TextStyle(fontSize: 12,)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 36),
                                  child: Text("Chings Hakka Noodles",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15, left: 15),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 0, right: 5),
                                  child:  Container(
                                    child: RoundCheckBox(
                                      onTap: (selected) {},
                                      checkedWidget: Icon(Icons.check, size: 15,color: Colors.white,),
                                      checkedColor: Colors.black,
                                      size: 20,

                                    ),
                                  ),
                                ),
                                Image.asset("assets/images/oill.png",
                                  width: MediaQuery.of(context).size.width/9,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text("6 tbsp",
                                      style: TextStyle(fontSize: 12,)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 44),
                                  child: Text("Olive oil",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15, left: 15),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 0, right: 5),
                                  child:  Container(
                                    child: RoundCheckBox(
                                      onTap: (selected) {},
                                      checkedWidget: Icon(Icons.check, size: 15,color: Colors.white,),
                                      checkedColor: Colors.black,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Image.asset("assets/images/springonionn.png",
                                  width: MediaQuery.of(context).size.width/9,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text("6 onion",
                                      style: TextStyle(fontSize: 12,)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 38),
                                  child: Text("Spring onion",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15, left: 15),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 0, right: 5),
                                  child:  Container(
                                    padding: EdgeInsets.all(0),
                                    child: RoundCheckBox(
                                      onTap: (selected) {},
                                      checkedWidget: Icon(Icons.check, size: 15,color: Colors.white,),
                                      checkedColor: Colors.black,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Image.asset("assets/images/gingerr.png",
                                  width: MediaQuery.of(context).size.width/9,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text("6 inch",
                                      style: TextStyle(fontSize: 12,)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 45),
                                  child: Text("Ginger",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 15, left: 15),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 5, right: 5),
                                    child:  Container(
                                      child: RoundCheckBox(
                                        onTap: (selected) {},
                                        checkedWidget: Icon(Icons.check, size: 15,color: Colors.white,),
                                        checkedColor: Colors.black,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  Image.asset("assets/images/garlicc.png",
                                    width: MediaQuery.of(context).size.width/9,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 9),
                                    child: Text("6 cloves",
                                        style: TextStyle(fontSize: 12,)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35),
                                    child: Text("Garlic cloves",
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ],
                      ),
                    ]
                )
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 15, left: 15),
              child: Text("See More", style: TextStyle(fontSize:14,color: Colors.blue, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Divider(
                color: Colors.grey,

              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Text("Payment Details",
                  style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
                  //textAlign: TextAlign.start,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 15),
                  child:  Text("Booking Amount",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, right: 15),
                  child:  Text("₹494",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
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
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, right: 15),
                  child:  Text("₹50",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 5),
              child: Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 15),
                  child:  Text("You Will Get",
                    style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, right: 15),
                  child:  Text("₹515",
                    style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 5),
              child: Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Text("Customer Address",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 15),
                  child: Icon(Icons.location_on, size: 18, color: Colors.grey,),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 5),
                  child: Text("Jnana Bharathi",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, ),),
                )
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 1, left: 35),
                child: Text("Neeladri Main Road, bengaluru, Karnataka, India, Landmark : NA",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 20, bottom: 5),
                  child: Container(
                    height: 40,
                    width: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black,
                    ),
                    child:Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child:  Image.asset("assets/images/img_16.png",
                            height: 22,
                            width: 22,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 5),
                            child:  Text("Help",
                              style: TextStyle(fontSize: 12, color: Colors.white),
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 15),
              child: SliderButton(
                action: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => Profile()));
                },
                label: Text("             Swipe to complete",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,),
                alignLabel: Alignment.center,

                icon: Center(
                    child: Icon(
                      Icons.keyboard_double_arrow_right,
                      color: Colors.white,
                      size: 22.0,
                      //semanticLabel: 'Text to announce in accessibility modes',
                    )),
                ///Change All the color and size from here.
                width: double.infinity,
                radius: 10,
                buttonColor: Colors.black,
                backgroundColor: Color(0xFF2D2A24),
                highlightedColor: Colors.white,
                baseColor: Colors.white,
              ),
            )
          ]
      ),
    );
  }
}
