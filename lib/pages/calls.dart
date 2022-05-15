import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/util/calldetails.dart';

class calls extends StatefulWidget {
  const calls({Key? key}) : super(key: key);

  @override
  State<calls> createState() => _callsState();
}

class _callsState extends State<calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                        calldetails[index]["image"].toString(),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width - 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(),
                        Text(
                          calldetails[index]["name"].toString(),
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Container(
                          height: 25,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              (calldetails[index]["callstatus"].toString() ==
                                      "missed")
                                  ? Icon(
                                      Icons.call_missed,
                                      color: Colors.red,
                                      size: 17,
                                    )
                                  : Icon(
                                      (calldetails[index]["callstatus"]
                                                  .toString() ==
                                              "incoming")
                                          ? Icons.call_made
                                          : Icons.call_received,
                                      color: Colors.green,
                                      size: 17,
                                    ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  calldetails[index]["time"].toString(),
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      height: 80,
                      width: 80,
                      padding: EdgeInsets.only(left: 35, bottom: 10),
                      child: Icon(
                        (calldetails[index]["audio"].toString() == "true") ?
                        Icons.call : Icons.video_call,
                        color: Colors.green,
                        size: 25,
                      ))
                ],
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width - 80,
                color: Colors.grey,
              )
            ],
          );
        },
        itemCount: calldetails.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_call),
        backgroundColor: Color.fromRGBO(32, 194, 83, 1),
      ),
    );
  }
}
