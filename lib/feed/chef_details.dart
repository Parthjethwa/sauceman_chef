import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sauceman_chef/feed/document_details.dart';

class ChefDetails extends StatefulWidget {
  const ChefDetails({Key? key}) : super(key: key);

  @override
  State<ChefDetails> createState() => _ChefDetailsState();
}

class _ChefDetailsState extends State<ChefDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       elevation: 1,
       leadingWidth: 28, // <-- Use this

       iconTheme: IconThemeData(
         color: Colors.black, //change your color here
       ),
       title: Text("Chef Details",
       style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
       ),
       backgroundColor: Colors.white,
     ),
      body:SingleChildScrollView(
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30, left: 15),
            child: Text("CONTACT DETAILS",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.grey),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 20, left: 15, right:15),
              child:  Container(
                  //alignment: Alignment.topLeft,
                  //height: MediaQuery.of(context).size.height/10,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child:  Text("Chef Name",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text("John Matthew",
                          style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15,left: 10),
                        child:  Text("Mobile Number",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text("+91 -9999999999",
                          style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child:  Text("Email Id",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5, bottom: 15),
                        child: Text("username@gmail.com",
                          style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
              )
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, left: 15),
            child: Text("WORK DETAILS",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.grey),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 20, left: 15, right:15),
              child:  Container(
                //alignment: Alignment.topLeft,
                //height: MediaQuery.of(context).size.height/10,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child:  Text("Qualification",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text("Lorem ipsum",
                          style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15,left: 10),
                        child:  Text("Experience",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text("3 Yrs worked at Le Baratin ",
                          style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child:  Text("Achievements",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5,),
                        child: Text("BHM with Culinary Arts",
                          style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child:  Text("Vaccination Status",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 5, bottom: 15),
                            child: Text("Certificate for COVID-19 Vaccination",
                              style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5, bottom: 15, right: 10),
                            child:Image.asset("assets/images/copy.png",
                            height: 20,
                            )
                          )
                        ],
                      )
                    ],
                  )
              )
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, left: 15),
            child: Text("SERVICE DETAILS",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.grey),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 20, left: 15, right:15),
              child:  Container(
                //alignment: Alignment.topLeft,
                //height: MediaQuery.of(context).size.height/10,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child:  Text("Served Food Type",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text("Veg",
                          style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15,left: 10),
                        child:  Text("Cuisines",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text("Indian, Chinese, South Indian",
                          style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child:  Text("Chef Range",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5, bottom: 15),
                        child: Text("Standard",
                          style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
              )
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Image.asset("assets/images/img_20.png",
            height: 70,
              width: double.infinity,
            ),
          ),

           Container(
                    margin: EdgeInsets.only(left: 10,bottom: 20, right: 10, top: 20),
                    width: double.infinity,
                    child:FlatButton(
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      color: Colors.black,
                      textColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      onPressed: () {

                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => DocumentDetails()));

                      },
                      child: const Text('Request Callback',
                        style: TextStyle(fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),


        ],
      ),
      )
    );
  }
}
