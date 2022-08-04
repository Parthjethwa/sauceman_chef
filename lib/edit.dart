import 'dart:ui';

import 'package:flutter/material.dart';

import 'update.dart';

class EditMenu extends StatefulWidget {
  const EditMenu({Key? key}) : super(key: key);

  @override
  State<EditMenu> createState() => _EditMenuState();
}

class _EditMenuState extends State<EditMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 28, // <-- Use this
          elevation: 1,
          automaticallyImplyLeading: false,
          title: Text("Cooking Menu",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.clear,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:Column(
              children: [

                     Container(
                       alignment: Alignment.topLeft,
                       child:  Padding(
                         padding: EdgeInsets.only(top: 20, left: 12),
                         child: Text("Ingredients List",
                           style: TextStyle(fontSize: 16,  fontWeight: FontWeight.bold, color: Colors.grey),
                         ),
                       ),
                     ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 12, right: 12),
                        child: TextField(
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.grey[100],
                              hintText: 'BBQ sauce'
                          ),
                        ),
                      ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 0),
                  child: Container(
                   // color: Colors.blue,
                    height: 50,
                   // width: MediaQuery.of(context).size.width/1,
                    child: Padding(
                        padding: EdgeInsets.only(top: 0, left: 10),
                        child: Row(
                            children: [
                              Image.asset("assets/images/maggiee.png",
                                width: MediaQuery.of(context).size.width/9,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 0, left: 10, right: 0),
                                  child: SizedBox(
                                    height: 35,
                                    width: 35,
                                    child: TextField(
                                      maxLength: 1,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(fontSize: 13),
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 0.0),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                        ),
                                        hintText: ' ',
                                        counterText: "",
                                      ),
                                    ),
                                  )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0, left: 10),
                                child: Text("Packs",
                                  style: TextStyle(fontSize: 10,  color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0, left: 15),
                                child: Text("Chings Hakka Noodles",
                                  style: TextStyle(fontSize: 12,  color: Colors.black, fontWeight: FontWeight.bold),
                                ),
                              ),
                        Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.only(right: 10),
                              child:
                              Image.asset("assets/images/delete.png",
                                width: 24,
                              ),
                            ),
                        )
                            ]
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Container(
                    //color: Colors.red,
                    height: MediaQuery.of(context).size.height/ 11,
                    width: MediaQuery.of(context).size.width/1,
                    child: Padding(
                        padding: EdgeInsets.only(top: 0, left: 10),
                        child: Row(
                            children: [
                              Image.asset("assets/images/oill.png",
                                width: MediaQuery.of(context).size.width/9,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 0, left: 10, right: 0),
                                  child: SizedBox(
                                    height: 35,
                                    width: 35,
                                    child: TextField(
                                      maxLength: 1,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(fontSize: 13),
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent, width: 0.0),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                        ),
                                        hintText: ' ',
                                        counterText: "",
                                      ),
                                    ),
                                  )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0, left: 10),
                                child: Text("tbps",
                                  style: TextStyle(fontSize: 10,  color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0, left: 23),
                                child: Text("Olive oil",
                                  style: TextStyle(fontSize: 12,  color: Colors.black, fontWeight: FontWeight.bold),
                                ),
                              ),
                        Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.only(right: 10),
                              child:
                              Image.asset("assets/images/delete.png",
                                width: 24,
                              ),
                            ),
                        )
                            ]
                        )
                    ),
                  ),
                ),
                //////////////////////////////////////////////////////////////////////
                Container(
                    //color: Colors.green,
                    height: MediaQuery.of(context).size.height/ 11,
                    width: MediaQuery.of(context).size.width/1,
                    child: Padding(
                        padding: EdgeInsets.only(top: 0, left: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset("assets/images/springonionn.png",
                                width: MediaQuery.of(context).size.width/9,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 0, left: 10, right: 0),
                                  child: SizedBox(
                                    height: 35,
                                    width: 35,
                                    child: TextField(
                                      maxLength: 1,
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 13),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent, width: 0.0),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                        ),
                                        hintText: ' ',
                                        counterText: "",
                                      ),
                                    ),
                                  )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0, left: 10),
                                child: Text("tbps",
                                  style: TextStyle(fontSize: 10,  color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0, left: 25),
                                child: Text("Spring Onion",
                                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,  color: Colors.black),
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.only(right: 10),
                                child:
                                Image.asset("assets/images/delete.png",
                                 width: 24,
                                ),
                              ),
                              )
                            ]
                        )
                    ),
                  ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Container(
                    //color: Colors.red,
                    height: MediaQuery.of(context).size.height/ 11,
                    width: MediaQuery.of(context).size.width/1,
                    child: Padding(
                        padding: EdgeInsets.only(top: 0, left: 10),
                        child: Row(
                            children: [
                              Image.asset("assets/images/gingerr.png",
                                width: MediaQuery.of(context).size.width/9,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 0, left: 10, right: 0),
                                  child: SizedBox(
                                    height: 35,
                                    width: 35,
                                    child: TextField(
                                      maxLength: 1,
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 13),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent, width: 0.0),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                        ),
                                        hintText: ' ',
                                        counterText: "",
                                      ),
                                    ),
                                  )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0, left: 10),
                                child: Text("Inch",
                                  style: TextStyle(fontSize: 10,  color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0, left: 27),
                                child: Text("Ginger",
                                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,  color: Colors.black),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(right: 10),
                                  child:
                                  Image.asset("assets/images/delete.png",
                                    width: 24,
                                  ),
                                ),
                              ),
                            ]
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Container(
                    //color: Colors.red,
                    height: MediaQuery.of(context).size.height/ 11,
                    width: MediaQuery.of(context).size.width/1,
                    child: Padding(
                        padding: EdgeInsets.only(top: 0, left: 10),
                        child: Row(
                            children: [
                              Image.asset("assets/images/garlicc.png",
                                width: MediaQuery.of(context).size.width/9,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 0, left: 10, right: 0),
                                  child: SizedBox(
                                    height: 35,
                                    width: 35,
                                    child: TextField(
                                      maxLength: 1,
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 13),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent, width: 0.0),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                        ),
                                        hintText: ' ',
                                        counterText: "",
                                      ),
                                    ),
                                  )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0, left: 10),
                                child: Text("cloves",
                                  style: TextStyle(fontSize: 10,  color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0, left: 18),
                                child: Text("Garlic",
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,  color: Colors.black),
                                ),
                              ),
                        Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.only(right: 10),
                              child:
                              Image.asset("assets/images/delete.png",
                                width: 24,
                              ),
                            ),
                        )
                            ]
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Container(
                    //color: Colors.red,
                    height: MediaQuery.of(context).size.height/ 11,
                    width: MediaQuery.of(context).size.width/1,
                    child: Padding(
                        padding: EdgeInsets.only(top: 0, left: 10),
                        child: Row(
                            children: [
                              Image.asset("assets/images/garlicc.png",
                                width: MediaQuery.of(context).size.width/9,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 0, left: 10, right: 0),
                                  child: SizedBox(
                                    height: 35,
                                    width: 35,
                                    child: TextField(
                                      maxLength: 1,
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 13),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent, width: 0.0),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                        ),
                                        hintText: ' ',
                                        counterText: "",
                                      ),
                                    ),
                                  )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0, left: 10),
                                child: Text("cloves",
                                  style: TextStyle(fontSize: 10,  color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0, left: 18),
                                child: Text("Garlic",
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,  color: Colors.black),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  padding: EdgeInsets.only(right: 10),
                                  child:
                                  Image.asset("assets/images/delete.png",
                                    width: 24,
                                  ),
                                ),
                              ),
                            ]
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Divider(
                    color:Colors.grey,
                    thickness: 0.5,
                  ),
                ),
               Container(
                 alignment: Alignment.topLeft,
                 child:  Padding(
                   padding: EdgeInsets.only(top: 20, left: 12),
                   child: Text("You may also add",
                     style: TextStyle(fontSize: 14,  color: Colors.grey),
                   ),
                 ),
               ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 5),
                  child: Container(
                    //color: Colors.red,
                    height: MediaQuery.of(context).size.height/ 11,
                    width: MediaQuery.of(context).size.width/1,
                    child: Padding(
                        padding: EdgeInsets.only(top: 0, left: 10),
                        child: Row(

                            children: [
                              Image.asset("assets/images/maggiee.png",
                                width: MediaQuery.of(context).size.width/9,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 0, left: 10, right: 0),
                                  child: SizedBox(
                                    height: 35,
                                    width: 35,
                                    child: TextField(
                                      maxLength: 1,
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 13),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent, width: 0.0),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                        ),
                                        hintText: ' ',
                                        counterText: "",
                                      ),
                                    ),
                                  )
                              ),

                                  Padding(
                                    padding: EdgeInsets.only(top: 0, left: 10),
                                    child: Text("packs",
                                      style: TextStyle(fontSize: 10,  color: Colors.grey),
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(top: 0, left: 15),
                                    child: Text("Chiile Sause",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,  color: Colors.black),
                                    ),
                                  ),
                                  Expanded(
                                    child:Container(
                                      alignment: Alignment.centerRight,
                                      child: Padding(padding: EdgeInsets.only(top: 10, left: 0, right: 10, bottom: 10),
                                        child: FlatButton(
                                          minWidth: 70.0,
                                          height: 30.0,
                                          color: Color(0xFFEFC55C),
                                          textColor: Colors.black,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(5)
                                          ),
                                          onPressed: () {
                                            /*
                                     Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => EditMenu()));
                                     */
                                          },
                                          child: const Text('+ Add',
                                            style: TextStyle(fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    )
                                  )
                            ]
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Container(
                    //color: Colors.red,
                    height: MediaQuery.of(context).size.height/ 11,
                    width: MediaQuery.of(context).size.width/1,
                    child: Padding(
                        padding: EdgeInsets.only(top: 0, left: 10),
                        child: Row(
                            children: [
                              Image.asset("assets/images/oill.png",
                                width: MediaQuery.of(context).size.width/9,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 0, left: 10, right: 0),
                                  child: SizedBox(
                                    height: 35,
                                    width: 35,
                                    child: TextField(
                                      maxLength: 1,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(fontSize: 13),
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent, width: 0.0),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8.0)),
                                        ),
                                        hintText: ' ',
                                        counterText: "",
                                      ),
                                    ),
                                  )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0, left: 10),
                                child: Text("tbps",
                                  style: TextStyle(fontSize: 10,  color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0, left: 24),
                                child: Text("Vinegar",
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,  color: Colors.black),
                                ),
                              ),
                              Expanded(
                                  child:Container(
                                    alignment: Alignment.centerRight,
                                    child: Padding(padding: EdgeInsets.only(top: 10, left: 0, right: 10, bottom: 10),
                                      child: FlatButton(
                                        minWidth: 70.0,
                                        height: 30.0,
                                        color: Color(0xFFEFC55C),
                                        textColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        onPressed: () {
                                          /*
                                     Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => EditMenu()));
                                     */
                                        },
                                        child: const Text('+ Add',
                                          style: TextStyle(fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  )
                              )
                            ]
                        ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Container(
                    //color: Colors.red,
                    height: MediaQuery.of(context).size.height/ 11,
                    width: MediaQuery.of(context).size.width/1,
                    child: Padding(
                      padding: EdgeInsets.only(top: 0, left: 10),
                      child: Row(
                          children: [
                            Image.asset("assets/images/springonionn.png",
                              width: MediaQuery.of(context).size.width/9,
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 0, left: 10, right: 0),
                                child: SizedBox(
                                  height: 35,
                                  width: 35,
                                  child: TextField(
                                    maxLength: 1,
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 13),
                                    textAlignVertical: TextAlignVertical.center,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent, width: 0.0),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                      ),
                                      hintText: ' ',
                                      counterText: "",
                                    ),
                                  ),
                                )
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 10),
                              child: Text("tbps",
                                style: TextStyle(fontSize: 10,  color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 27),
                              child: Text("Oregano",
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,  color: Colors.black),
                              ),
                            ),
                            Expanded(
                                child:Container(
                                  alignment: Alignment.centerRight,
                                  child: Padding(padding: EdgeInsets.only(top: 10, left: 0, right: 10, bottom: 10),
                                    child: FlatButton(
                                      minWidth: 70.0,
                                      height: 30.0,
                                      color: Color(0xFFEFC55C),
                                      textColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      onPressed: () {
                                        /*
                                     Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => EditMenu()));
                                     */
                                      },
                                      child: const Text('+ Add',
                                        style: TextStyle(fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                )
                            )
                          ]
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
                  child: FlatButton(
                    minWidth: 400.0,
                    height: 50.0,
                    color: Colors.black,
                    textColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    onPressed: () {

                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Update()));

                    },
                    child: const Text('Update',
                      style: TextStyle(fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            )
        )
    );
  }
}

/*





 */