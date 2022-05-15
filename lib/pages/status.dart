import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../util/status_view.dart';
import '../util/statusdetails.dart';

class status extends StatefulWidget {
  const status({Key? key}) : super(key: key);

  @override
  State<status> createState() => _statusState();
}

class _statusState extends State<status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    height: 80,
                    width: 80,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("asset/babyy.jpg"),
                          radius: 30,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 25,
                            height: 25,
                            margin: EdgeInsets.only(bottom: 18, right: 18),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(32, 194, 83, 1),
                                borderRadius: BorderRadius.circular(18)),
                            child: Icon(
                              Icons.add,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My Status",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        Text(
                          "Tap to add status update",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width,
                height: 30,
                color: Color.fromRGBO(238, 238, 238, 1),
                padding: EdgeInsets.only(top: 5, left: 20),
                child: Text("Recent updates",
                    style: TextStyle(color: Colors.grey[600])),
              ),
              for (int i = 0; i < recentupdates.length; ++i)
                Container(
                  padding: EdgeInsets.only(top: 5, left: 20),
                  height: 81,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          StatusView(
                            centerImageUrl: recentupdates[i]["image"].toString(),
                            radius: 35,
                            numberOfStatus: int.parse(
                                recentupdates[i]["numberofstatus"].toString()),
                            indexOfSeenStatus: int.parse(
                                recentupdates[i]["numberofseenstatus"].toString()),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  recentupdates[i]["name"].toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, fontSize: 20),
                                ),
                                Text(
                                  recentupdates[i]["time"].toString(),
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        height: 1,
                        width: MediaQuery.of(context).size.width - 80,
                        color: Colors.grey[350],
                      )
                    ],
                  ),
                ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                width: MediaQuery.of(context).size.width,
                height: 30,
                color: Color.fromRGBO(238, 238, 238, 1),
                padding: EdgeInsets.only(top: 5, left: 20),
                child: Text("Viewed updates",
                    style: TextStyle(color: Colors.grey[600])),
              ),
              for (int i = 0; i < viewedupdates.length; ++i)
                Container(
                  padding: EdgeInsets.only(top: 5, left: 20),
                  height: 81,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          StatusView(
                            centerImageUrl: viewedupdates[i]["image"].toString(),
                            radius: 35,
                            numberOfStatus: int.parse(
                                viewedupdates[i]["numberofstatus"].toString()),
                            indexOfSeenStatus: int.parse(
                                viewedupdates[i]["numberofstatus"].toString()),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  viewedupdates[i]["name"].toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, fontSize: 20),
                                ),
                                Text(
                                  viewedupdates[i]["time"].toString(),
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        height: 1,
                        width: MediaQuery.of(context).size.width - 80,
                        color: Colors.grey[350],
                      )
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(bottom: 20),
            child: FloatingActionButton(
              backgroundColor: Color.fromRGBO(234, 239, 243, 1),
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Colors.black,
              ),
            ),
          ),
          FloatingActionButton(
            backgroundColor: Color.fromRGBO(32, 194, 83, 1),
            onPressed: () {},
            child: Icon(Icons.camera_alt),
          )
        ],
      ),
    );
  }
}
