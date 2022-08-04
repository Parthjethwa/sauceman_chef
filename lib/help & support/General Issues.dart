import 'dart:ui';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class GeneralIssue extends StatefulWidget {
  const GeneralIssue({Key? key}) : super(key: key);

  @override
  State<GeneralIssue> createState() => _GeneralIssueState();
}

class _GeneralIssueState extends State<GeneralIssue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        leadingWidth: 28, // <-- Use this
        //automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text("Help & Support",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        backgroundColor: Colors.white,
      ),
      body:ExpandableTheme(
        data: const ExpandableThemeData(
          iconColor: Colors.black,
          useInkWell: true,
          expandIcon: Icons.arrow_forward_ios_rounded,
          iconSize: 15,
          collapseIcon: Icons.keyboard_arrow_up
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            Card1(),
            Card2(),
            Card3(),
            Card4(),
          ],
        ),
      ),
    );
  }
}

const loremIpsum =
    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.";
class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
        child:  Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
              child: Text("General Issues",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Text(
                      "What is Saucemen customer care number  ?",
                      style: TextStyle(color: Colors.grey, fontSize: 14)
                    )),
                collapsed: Text(
                  "",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    for (var _ in Iterable.generate(1))
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            loremIpsum,
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("Is your issue still unresolved? ",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(padding: EdgeInsets.only(top: 10, left: 0, right: 10, bottom: 10),
                        child: FlatButton(
                          // minWidth: 70.0,
                          height: 40.0,
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
                          child: const Text('Request Call Back',
                            style: TextStyle(fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )

                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child:  Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Text(
                        "I have a query related to cancelled order",
                        style: TextStyle(color: Colors.grey, fontSize: 14)
                    )),
                collapsed: Text(
                  "",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    for (var _ in Iterable.generate(1))
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            loremIpsum,
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("I have a query related to cancelled order",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(padding: EdgeInsets.only(top: 10, left: 0, right: 10, bottom: 10),
                        child: FlatButton(
                          // minWidth: 70.0,
                          height: 40.0,
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
                          child: const Text('Request Call Back',
                            style: TextStyle(fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )

                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child:  Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "What is Saucemen customer care number  ?",
                        style: TextStyle(color: Colors.grey, fontSize: 14)
                    )),
                collapsed: Text(
                  "",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    for (var _ in Iterable.generate(1))
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            loremIpsum,
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("What is Saucemen customer care number  ?",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(padding: EdgeInsets.only(top: 10, left: 0, right: 10, bottom: 10),
                        child: FlatButton(
                          // minWidth: 70.0,
                          height: 40.0,
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
                          child: const Text('Request Call Back',
                            style: TextStyle(fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )

                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class Card4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child:  Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "I have a query related to cancelled order",
                        style: TextStyle(color: Colors.grey, fontSize: 14)
                    )),
                collapsed: Text(
                  "",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    for (var _ in Iterable.generate(1))
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            loremIpsum,
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          )),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("Is your issue still unresolved? ",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(padding: EdgeInsets.only(top: 10, left: 0, right: 10, bottom: 10),
                        child: FlatButton(
                          // minWidth: 70.0,
                          height: 40.0,
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
                          child: const Text('Request Call Back',
                            style: TextStyle(fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )

                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



/*
Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("Is your issue still unresolved? ",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ),
                    Container(
                          alignment: Alignment.topLeft,
                          child: Padding(padding: EdgeInsets.only(top: 10, left: 0, right: 10, bottom: 10),
                            child: FlatButton(
                             // minWidth: 70.0,
                              height: 40.0,
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
                              child: const Text('Request Call Back',
                                style: TextStyle(fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
 */