import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/calls.dart';
import 'package:whatsappclone/pages/camera.dart';
import 'package:whatsappclone/pages/chats.dart';
import 'package:whatsappclone/pages/status.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 94, 85, 1),
      appBar: AppBar(
        title: const Text("WhatsApp"),
        backgroundColor: Color.fromRGBO(7, 94, 85, 1),
        bottom: TabBar(
          controller: controller,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(child: Text("CHATS")),
            Tab(child: Text("STATUS")),
            Tab(child: Text("CALLS")),
          ],
        ),
        actions: const [
          Icon(Icons.search, size: 28,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
          ),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(controller: controller, children: [
        camera(), chats(), status(), calls()
      ],),
    );
  }
}
