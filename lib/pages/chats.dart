import 'package:flutter/material.dart';
import 'package:whatsappclone/util/chatdetails.dart';

class chats extends StatefulWidget {
  const chats({Key? key}) : super(key: key);

  @override
  State<chats> createState() => _chatsState();
}

class _chatsState extends State<chats> {
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
                        chatdetails[index]["image"].toString(),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width - 180,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chatdetails[index]["name"].toString(),
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          chatdetails[index]["message"].toString(),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          chatdetails[index]["time"].toString(),
                          style: TextStyle(
                              color: (int.parse(chatdetails[index]
                                              ["unreadmessage"]
                                          .toString()) >
                                      0)
                                  ? Color.fromRGBO(32, 194, 83, 1)
                                  : Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                        Visibility(
                          visible: (int.parse(chatdetails[index]
                                      ["unreadmessage"]
                                  .toString()) >
                              0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(32, 194, 83, 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0))),
                            width: 20,
                            height: 20,
                            child: Center(
                              child: Text(
                                chatdetails[index]["unreadmessage"].toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
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
        itemCount: chatdetails.length,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(32, 194, 83, 1),
        onPressed: () {},
        child: Icon(Icons.message_sharp),
      ),
    );
  }
}
