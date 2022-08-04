import 'package:flutter/material.dart';

import 'bestdishes.dart';

class DocumentDetails extends StatefulWidget {
  const DocumentDetails({Key? key}) : super(key: key);

  @override
  State<DocumentDetails> createState() => _DocumentDetailsState();
}

class _DocumentDetailsState extends State<DocumentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          leadingWidth: 28, // <-- Use this

          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          title: Text("Document Details",
            style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            child:
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30, left: 15),
                    child: Text("BANK DETAILS",
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
                                child:  Text("Bank Name",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 5),
                                child: Text("Canara Bank",
                                  style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15,left: 10),
                                child:  Text("IFSC Code",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 5),
                                child: Text("CNRB0001871",
                                  style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15,left: 10),
                                child:  Text("Account Number",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 5),
                                child: Text("181300915641",
                                  style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15, left: 10),
                                child:  Text("Bank Statement",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10, top: 5, bottom: 15),
                                    child: Text("New file.pdf",
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
                    child: Text("AADHAR CARD DETAILS",
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
                                  child:  Text("Aadhar Number",
                                    style: TextStyle(fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10, top: 5, bottom: 15),
                                      child: Text("9814 1311 6611",
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
                              ]
                          )
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30, left: 15),
                    child: Text("PAN CARD DETAILS",
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
                                  child:  Text("Pan Number",
                                    style: TextStyle(fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10, top: 5, bottom: 15),
                                      child: Text("AWPJU19881L",
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
                              ]
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
                            builder: (context) => BestDishes()));

                      },
                      child: const Text('Request Callback',
                        style: TextStyle(fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

        )
                ]
            )
        )
    );
  }
}
